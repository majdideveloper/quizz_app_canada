import 'package:quizz_app_canada/features/question/data/models/question_model.dart';
import 'package:quizz_app_canada/features/question/domain/entities/question_entity.dart';
import 'package:quizz_app_canada/features/question/domain/repositories/question_repository.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../datasources/remote/question_remote_data_source.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDataSource remoteDataSource;
  QuestionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, String>> addQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType}) async {
    try {
      final model = QuestionModel.fromEntity(question);
      final id = await remoteDataSource.addQuestion(model,
          imageBytes: imageBytes, imageContentType: imageContentType);
      return Right(id);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<QuestionEntity>>> getQuestions() async {
    try {
      final models = await remoteDataSource.getQuestions();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateQuestion(QuestionEntity question,
      {List<int>? imageBytes, String? imageContentType}) async {
    try {
      final model = QuestionModel.fromEntity(question);
      await remoteDataSource.updateQuestion(model,
          imageBytes: imageBytes, imageContentType: imageContentType);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteQuestion(QuestionEntity question) async {
    try {
      final model = QuestionModel.fromEntity(question);
      await remoteDataSource.deleteQuestion(model);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateQuestionImage(
      {required String questionId, required String imageUrl}) async {
    try {
      await remoteDataSource.updateQuestionImage(
          questionId: questionId, imageUrl: imageUrl);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
