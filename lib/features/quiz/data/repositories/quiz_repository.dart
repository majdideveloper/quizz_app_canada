import 'package:quizz_app_canada/core/errors/exceptions.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';
import 'package:quizz_app_canada/core/network/network_info.dart';
import 'package:quizz_app_canada/features/quiz/data/datasources/local/quiz_local_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/datasources/remote/quiz_remote_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/models/quiz_model.dart';
import 'package:dartz/dartz.dart';

class QuizRepository {
  final NetworkInfo networkInfo;
  final QuizRemoteDataSource remoteDataSource;
  final QuizLocalDataSource localDataSource;
//! here i need to complete the logic when complete first quiz ...
  QuizRepository({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  Future<Either<Failure, QuizModel>> getQuiz(String quizId) async {
    if (!(await networkInfo.isConnected)) {
      return Left(NoConnectionFailure());
    }

    try {
      final quiz = await remoteDataSource.getQuiz(quizId);

      await localDataSource.cacheQuiz(quiz);

      return Right(quiz);
    } on ServerException {
      return Left(ServerFailure());
    } on CacheException {
      return Left(CacheFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, bool>> hasUserTestedQuiz() async {
    try {
      final result = await localDataSource.hasUserTestedQuiz();
      return Right(result);
    } catch (e) {
      //TODO change this left CacheFailure
      return Left(CacheFailure());
    }
  }

  Future<Either<Failure, void>> setUserTestedQuiz() async {
    try {
      await localDataSource.setUserTestedQuiz();
      return const Right(null);
    } catch (e) {
      //TODO change this left CacheFailure
      return Left(CacheFailure());
    }
  }
}
