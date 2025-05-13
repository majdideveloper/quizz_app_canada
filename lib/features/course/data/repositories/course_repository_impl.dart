import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/data/datasources/content/remote/course_content_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/datasources/course/remote/course_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/models/course_model.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;
  final CourseContentRemoteDataSource courseContentRemoteDataSource;

  CourseRepositoryImpl({
    required this.remoteDataSource,
    required this.courseContentRemoteDataSource,
  });

  // @override
  // Future<Either<Failure, List<CourseEntity>>> getAllCourses() async {
  //   try {
  //     final result = await remoteDataSource.getAllCourses();
  //     return Right(result.map((e) => e.toEntity()).toList());
  //   } catch (e) {
  //     return Left(Failure.serverFailure(e.toString()));
  //   }
  // }

  @override
  Future<Either<Failure, List<CourseEntity>>> getAllCourses() async {
    try {
      final courseModels = await remoteDataSource.getAllCourses();

      final List<CourseEntity> coursesWithContents = [];

      for (final course in courseModels) {
        final contentModels = await courseContentRemoteDataSource
            .getContentsByCourseId(course.id);
        final contentEntities = contentModels.map((e) => e.toEntity()).toList();

        coursesWithContents.add(CourseEntity(
          id: course.id,
          title: course.title,
          description: course.description,
          level: course.level,
          thumbnailUrl: course.thumbnailUrl,
          contents: contentEntities,
        ));
      }

      return Right(coursesWithContents);
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseEntity>> getCourseById(String id) async {
    try {
      final result = await remoteDataSource.getCourseById(id);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseEntity>> createCourse(
      CourseEntity course) async {
    try {
      final model = CourseModel(
        id: course.id,
        title: course.title,
        description: course.description,
        level: course.level,
        thumbnailUrl: course.thumbnailUrl,
      );
      final result = await remoteDataSource.createCourse(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseEntity>> updateCourse(
      CourseEntity course) async {
    try {
      final model = CourseModel(
        id: course.id,
        title: course.title,
        description: course.description,
        level: course.level,
        thumbnailUrl: course.thumbnailUrl,
      );
      final result = await remoteDataSource.updateCourse(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCourse(String id) async {
    try {
      await remoteDataSource.deleteCourse(id);
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CourseEntity>>> searchCourses(
      String query) async {
    try {
      final result = await remoteDataSource.searchCourses(query);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }
}
