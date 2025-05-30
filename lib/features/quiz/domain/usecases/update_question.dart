import '../entities/question_entity.dart';
import '../repositories/question_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

class UpdateQuestion {
  final QuestionRepository repository;
  UpdateQuestion(this.repository);

  Future<Either<Failure, void>> call(QuestionEntity question) {
    return repository.updateQuestion(question);
  }
}
