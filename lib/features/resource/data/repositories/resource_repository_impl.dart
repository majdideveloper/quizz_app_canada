import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/resource/data/datasources/resource_remote_data_source.dart';

import '../../domain/entities/resource_entity.dart';
import '../../domain/repositories/resource_repository.dart';

class ResourceRepositoryImpl implements ResourceRepository {
  final ResourceRemoteDataSource remoteDataSource;

  ResourceRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ResourceEntity>>> getResources() async {
    try {
      final result = await remoteDataSource.getResources();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }
}
