import '../../models/question_model.dart';

abstract class QuestionRemoteDataSource {
  Future<void> addQuestion(QuestionModel question);
  Future<List<QuestionModel>> getQuestions();
  Future<void> updateQuestion(QuestionModel question);
  Future<void> deleteQuestion(String id);
}
