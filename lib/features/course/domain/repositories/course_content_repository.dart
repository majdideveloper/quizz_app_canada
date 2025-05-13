



import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';

abstract class CourseContentRepository {
  /// Retrieves all contents of a course
  Future<Either<Failure, List<CourseContentEntity>>> getContentsByCourseId(String courseId);

  /// Adds content to a course
  Future<Either<Failure, CourseContentEntity>> addContent(CourseContentEntity content);

  /// Updates a specific course content
  Future<Either<Failure, CourseContentEntity>> updateContent(CourseContentEntity content);

  /// Deletes a specific content by ID
  Future<Either<Failure, void>> deleteContent(String contentId);
}