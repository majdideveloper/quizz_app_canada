import '../repositories/question_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';

class UpdateQuestionImage {
  final QuestionRepository repository;
  UpdateQuestionImage(this.repository);

  Future<Either<Failure, void>> call(
      {required String questionId, required String imageUrl}) {
    return repository.updateQuestionImage(
        questionId: questionId, imageUrl: imageUrl);
  }
}
