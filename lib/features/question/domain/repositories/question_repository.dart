import '../entities/question_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

abstract class QuestionRepository {
  Future<Either<Failure, String>> addQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType});
  Future<Either<Failure, List<QuestionEntity>>> getQuestions();
  Future<Either<Failure, void>> updateQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType});
  Future<Either<Failure, void>> deleteQuestion(QuestionEntity question);
  Future<Either<Failure, void>> updateQuestionImage(
      {required String questionId, required String imageUrl});
}
