import '../entities/question_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

abstract class QuestionRepository {
  Future<Either<Failure, void>> addQuestion(QuestionEntity question);
  Future<Either<Failure, List<QuestionEntity>>> getQuestions();
  Future<Either<Failure, void>> updateQuestion(QuestionEntity question);
  Future<Either<Failure, void>> deleteQuestion(String id);
}
