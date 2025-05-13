import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/data/datasources/content/remote/course_content_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/models/course_content_model.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_content_repository.dart';

class CourseContentRepositoryImpl implements CourseContentRepository {
  final CourseContentRemoteDataSource remoteDataSource;

  CourseContentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CourseContentEntity>>> getContentsByCourseId(
      String courseId) async {
    try {
      final result = await remoteDataSource.getContentsByCourseId(courseId);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseContentEntity>> getContentById(
      String id, String courseId) async {
    try {
      final result = await remoteDataSource.getContentById(id);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseContentEntity>> updateContent(
      CourseContentEntity content) async {
    try {
      final model = CourseContentModel(
        id: content.id,
        courseId: content.courseId,
        type: content.type,
        value: content.value,
        order: content.order ?? 0,
      );
      final result = await remoteDataSource.updateContent(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteContent(String id) async {
    try {
      await remoteDataSource.deleteContent(id);
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseContentEntity>> addContent(
      CourseContentEntity content) async {
    try {
      final model = CourseContentModel(
        id: content.id,
        courseId: content.courseId,
        type: content.type,
        value: content.value,
        order: content.order ?? 0,
      );
      final result = await remoteDataSource.createContent(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }
}
