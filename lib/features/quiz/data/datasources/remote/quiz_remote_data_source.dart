import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/core/errors/exceptions.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/quiz_model.dart';

class QuizRemoteDataSource {
  final PocketBase pb;

  QuizRemoteDataSource({required this.pb});

  Future<QuizModel> getQuiz(String quizId) async {
    try {
      final record = await pb
          .collection(NameCollections.quizzes)
          .getOne(quizId, expand: 'questions.options, questions.correctOption');
      return QuizModel.fromJson(record);
    } catch (e) {
      throw ServerException();
    }
  }
}
