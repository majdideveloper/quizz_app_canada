import '../entities/question_entity.dart';
import '../repositories/question_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

class AddQuestion {
  final QuestionRepository repository;
  AddQuestion(this.repository);

  Future<Either<Failure, String>> call(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType}) {
    return repository.addQuestion(question,
        imageBytes: imageBytes, imageContentType: imageContentType);
  }
}
