



import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';

abstract class CourseRepository {
  /// Retrieves all courses
  Future<Either<Failure, List<CourseEntity>>> getAllCourses();

  /// Gets a specific course by ID
  Future<Either<Failure, CourseEntity>> getCourseById(String id);

  /// Creates a new course
  Future<Either<Failure, CourseEntity>> createCourse(CourseEntity course);

  /// Updates an existing course
  Future<Either<Failure, CourseEntity>> updateCourse(CourseEntity course);

  /// Deletes a course by ID
  Future<Either<Failure, void>> deleteCourse(String id);
}
