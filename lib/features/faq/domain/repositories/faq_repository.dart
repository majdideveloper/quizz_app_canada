



import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';

abstract class FaqRepository {
  Future<Either<Failure, List<FaqEntity>>> getAllFaqs();
  Future<Either<Failure, List<FaqEntity>>> getVisibleFaqs();
  Future<Either<Failure, FaqEntity>> createFaq(FaqEntity faq);
  Future<Either<Failure, FaqEntity>> updateFaq(FaqEntity faq);
  Future<Either<Failure, void>> deleteFaq(String id);
}