


import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';
import 'package:quizz_app_canada/features/faq/domain/repositories/faq_repository.dart';

class GetVisibleFaqs {
  final FaqRepository repository;

  GetVisibleFaqs(this.repository);

  Future<Either<Failure, List<FaqEntity>>> call() {
    return repository.getVisibleFaqs();
  }
}