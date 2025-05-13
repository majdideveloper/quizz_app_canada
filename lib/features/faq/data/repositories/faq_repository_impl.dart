import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import '../../domain/entities/faq_entity.dart';
import '../../domain/repositories/faq_repository.dart';
import '../datasources/faq_remote_datasource.dart';
import '../models/faq_model.dart';

class FaqRepositoryImpl implements FaqRepository {
  final FaqRemoteDataSource remoteDataSource;

  FaqRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<FaqEntity>>> getAllFaqs() async {
    try {
      final result = await remoteDataSource.getAllFaqs();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<FaqEntity>>> getVisibleFaqs() async {
    try {
      final result = await remoteDataSource.getVisibleFaqs();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, FaqEntity>> createFaq(FaqEntity faq) async {
    try {
      final faqModel = FaqModel(
        id: faq.id,
        question: faq.question,
        answer: faq.answer,
      );
      final result = await remoteDataSource.createFaq(faqModel);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, FaqEntity>> updateFaq(FaqEntity faq) async {
    try {
      final faqModel = FaqModel(
        id: faq.id,
        question: faq.question,
        answer: faq.answer,
      );
      final result = await remoteDataSource.updateFaq(faqModel);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteFaq(String id) async {
    try {
      await remoteDataSource.deleteFaq(id);
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }
}
