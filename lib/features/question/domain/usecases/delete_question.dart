import 'package:quizz_app_canada/features/question/domain/entities/question_entity.dart';

import '../repositories/question_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

class DeleteQuestion {
  final QuestionRepository repository;
  DeleteQuestion(this.repository);

  Future<Either<Failure, void>> call(QuestionEntity question) {
    return repository.deleteQuestion(question);
  }
}
