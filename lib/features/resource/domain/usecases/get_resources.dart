import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/resource/domain/entities/resource_entity.dart';
import 'package:quizz_app_canada/features/resource/domain/repositories/resource_repository.dart';

class GetResources {
  final ResourceRepository repository;

  GetResources(this.repository);

  Future<Either<Failure, List<ResourceEntity>>> call() =>
      repository.getResources();
}
