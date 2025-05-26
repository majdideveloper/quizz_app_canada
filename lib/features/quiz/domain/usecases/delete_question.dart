import '../repositories/question_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

class DeleteQuestion {
  final QuestionRepository repository;
  DeleteQuestion(this.repository);

  Future<Either<Failure, void>> call(String id) {
    return repository.deleteQuestion(id);
  }
}
