import 'package:quizz_app_canada/features/question/data/models/question_model.dart';

abstract class QuestionRemoteDataSource {
  Future<String> addQuestion(QuestionModel question,
      {List<int>? imageBytes, String? imageContentType});
  Future<List<QuestionModel>> getQuestions();
  Future<void> updateQuestion(QuestionModel question,
      {List<int>? imageBytes, String? imageContentType});
  Future<void> updateQuestionImage(
      {required String questionId, required String imageUrl});
  Future<void> deleteQuestion(QuestionModel question);
}
