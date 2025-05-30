import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/question_entity.dart';
import '../../domain/usecases/get_questions.dart';
import '../../domain/usecases/add_question.dart';
import '../../domain/usecases/update_question.dart';
import '../../domain/usecases/delete_question.dart';
import '../../domain/usecases/update_question_image.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final GetQuestions getQuestionsUseCase;
  final AddQuestion addQuestionUseCase;
  final UpdateQuestion updateQuestionUseCase;
  final DeleteQuestion deleteQuestionUseCase;
  final UpdateQuestionImage updateQuestionImageUseCase;

  QuestionCubit({
    required this.getQuestionsUseCase,
    required this.addQuestionUseCase,
    required this.updateQuestionUseCase,
    required this.deleteQuestionUseCase,
    required this.updateQuestionImageUseCase,
  }) : super(const QuestionState.initial());

  Future<void> fetchQuestions() async {
    emit(const QuestionState.loading());
    final result = await getQuestionsUseCase();
    result.fold(
      (failure) => emit(QuestionState.error('Failed to load questions')),
      (questions) => emit(QuestionState.loaded(questions)),
    );
  }

  Future<String?> addQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType}) async {
    final result = await addQuestionUseCase(question,
        imageBytes: imageBytes, imageContentType: imageContentType);
    return result.fold(
      (failure) {
        emit(QuestionState.error('Failed to add question'));
        return null;
      },
      (id) => id,
    );
  }

  Future<void> updateQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType}) async {
    emit(const QuestionState.loading());
    final result = await updateQuestionUseCase(question,
        imageBytes: imageBytes, imageContentType: imageContentType);
    result.fold(
      (failure) => emit(QuestionState.error('Failed to update question')),
      (_) => fetchQuestions(),
    );
  }

  Future<void> deleteQuestion(QuestionEntity question) async {
    emit(const QuestionState.loading());
    final result = await deleteQuestionUseCase(question);
    result.fold(
      (failure) => emit(QuestionState.error('Failed to delete question')),
      (_) => fetchQuestions(),
    );
  }

  Future<void> updateQuestionImage(
      {required String questionId, required String imageUrl}) async {
    await updateQuestionImageUseCase(
        questionId: questionId, imageUrl: imageUrl);
  }
}
