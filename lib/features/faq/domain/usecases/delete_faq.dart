import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/faq/domain/repositories/faq_repository.dart';

class DeleteFaq {
  final FaqRepository repository;

  DeleteFaq(this.repository);

  Future<Either<Failure, void>> call(String id) {
    return repository.deleteFaq(id);
  }
}
