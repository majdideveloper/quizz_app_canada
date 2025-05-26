import 'package:supabase_flutter/supabase_flutter.dart';
import 'question_remote_data_source.dart';
import '../../models/question_model.dart';
import '../../models/option_response_model.dart';
import 'package:quizz_app_canada/core/storage/storage_service.dart';

import 'package:quizz_app_canada/core/utils/logger.dart';

class QuestionRemoteDataSourceImpl implements QuestionRemoteDataSource {
  final SupabaseClient client;
  final StorageService storageService;

  QuestionRemoteDataSourceImpl(
      {required this.client, required this.storageService});

  @override
  Future<String> addQuestion(QuestionModel question,
      {List<int>? imageBytes, String? imageContentType}) async {
    AppLogger.logger.i(
        'addQuestion called with: \nTitle: ${question.title}, Options: ${question.options.map((o) => o.title).toList()}');
    try {
      String? imageUrl = question.imageQuestion;
      String fileName = 'image_${DateTime.now().millisecondsSinceEpoch}.png';
      String storagePath = '${question.id}/$fileName';
      if (imageBytes != null && imageContentType != null) {
        imageUrl = await storageService.uploadFile(
          bucket: 'questions',
          path: storagePath,
          bytes: imageBytes,
          contentType: imageContentType,
        );
      }
      // 1. Insert question
      final questionRes = await client
          .from('questions')
          .insert({
            'id': question.id,
            'question_text': question.title,
            'explanation': question.hintWrongAnswer,
            'level': question.difficulty?.toLowerCase() ?? 'easy',
            'image_url': imageUrl,
            'category_id':
                question.categoryId ?? '6cd9e356-677b-418e-baaa-f215df26a311',
          })
          .select()
          .single();

      final questionId = questionRes['id'] as String;

      // 2. Insert responses
      for (var i = 0; i < question.options.length; i++) {
        final option = question.options[i];
        await client.from('responses').insert({
          'question_id': questionId,
          'response_text': option.title,
          'is_correct': i == question.correctOptionIndex,
        });
      }
      return questionId;
    } catch (e, stack) {
      AppLogger.logger.e('Error in addQuestion', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<List<QuestionModel>> getQuestions() async {
    AppLogger.logger.i('getQuestions called');
    try {
      final questionsData =
          await client.from('questions').select('*, responses(*)');
      // Map to QuestionModel
      return questionsData.map<QuestionModel>((q) {
        final options = (q['responses'] as List)
            .map<OptionResponseModel>((r) => OptionResponseModel(
                  id: r['id'],
                  title: r['response_text'],
                  imageResponse: null,
                ))
            .toList();
        final correctIndex =
            (q['responses'] as List).indexWhere((r) => r['is_correct'] == true);

        return QuestionModel(
          id: q['id'],
          title: q['question_text'],
          hintWrongAnswer: q['explanation'] ?? '',
          options: options,
          correctOptionIndex: correctIndex,
          // correctOption: options[correctIndex],
          imageQuestion: q['image_url'],
        );
      }).toList();
    } catch (e, stack) {
      AppLogger.logger.e('Error in getQuestions', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<void> updateQuestion(QuestionModel question,
      {List<int>? imageBytes, String? imageContentType}) async {
    AppLogger.logger.i(
        'updateQuestion called with: \nID: ${question.id}, Title: ${question.title}');
    try {
      String? imageUrl = question.imageQuestion;
      String fileName = 'image_${DateTime.now().millisecondsSinceEpoch}.png';
      String storagePath = '${question.id}/$fileName';
      if (imageBytes != null && imageContentType != null) {
        imageUrl = await storageService.updateFile(
          bucket: 'questions',
          path: question.imageQuestion?.split('questions/').last ?? '',
          bytes: imageBytes,
          contentType: imageContentType,
        );
      }
      // Update question
      await client.from('questions').update({
        'question_text': question.title,
        'explanation': question.hintWrongAnswer,
        'level': question.difficulty?.toLowerCase() ?? 'easy',
        'image_url': imageUrl,
        'category_id': question.categoryId,
      }).eq('id', question.id);

      // Delete old responses
      await client.from('responses').delete().eq('question_id', question.id);

      // Insert new responses
      for (var i = 0; i < question.options.length; i++) {
        final option = question.options[i];
        await client.from('responses').insert({
          'question_id': question.id,
          'response_text': option.title,
          'is_correct': i == question.correctOptionIndex,
        });
      }
    } catch (e, stack) {
      AppLogger.logger
          .e('Error in updateQuestion', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<void> deleteQuestion(QuestionModel question) async {
    AppLogger.logger.i('deleteQuestion called with ID: ${question.id}');
    try {
      // Delete the image from storage
      String pathImage = question.imageQuestion?.split('questions/').last ?? '';
      await storageService.deleteFile(
        bucket: 'questions',
        path: pathImage,
      );
      // Delete the question from the database
      await client.from('questions').delete().eq('id', question.id);
      // responses will be deleted automatically due to ON DELETE CASCADE
    } catch (e, stack) {
      AppLogger.logger
          .e('Error in deleteQuestion', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<void> updateQuestionImage(
      {required String questionId, required String imageUrl}) async {
    AppLogger.logger.i('Updating image for question: $questionId');
    try {
      await client.from('questions').update({
        'image_url': imageUrl,
      }).eq('id', questionId);
      AppLogger.logger.i('Image updated for question: $questionId');
    } catch (e, stack) {
      AppLogger.logger
          .e('Error updating image for question', error: e, stackTrace: stack);
      rethrow;
    }
  }
}
