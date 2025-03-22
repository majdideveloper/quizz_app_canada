import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/errors/exceptions.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';
import 'package:quizz_app_canada/core/network/network_info.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/datasources/local/category_local_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/datasources/remote/category_remote_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';

class CategoryRepository {
  final NetworkInfo networkInfo;
  final CategoryRemoteDataSource remoteDataSource;
  final CategoryLocalDataSource localDataSource;

  CategoryRepository({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    // ✅ Check for network availability
    if (!(await networkInfo.isConnected)) {
      return Left(NoConnectionFailure());
    }

    try {
      final categories = await remoteDataSource.getCategories();

      // // ✅ Ensure caching doesn’t affect API response
      // await localDataSource.cacheCategories(categories).catchError((_) {});

      return Right(categories);
    } on ServerException {
      return Left(ServerFailure());
    } on CacheException {
      return Left(CacheFailure());
    } catch (e) {
      AppLogger.logger.d(e.toString());
      return Left(SomeThingWrongFailure());
    }
  }
}
