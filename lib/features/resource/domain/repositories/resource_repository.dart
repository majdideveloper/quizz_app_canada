import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/resource/domain/entities/resource_entity.dart';

abstract class ResourceRepository {
  Future<Either<Failure, List<ResourceEntity>>> getResources();
}
