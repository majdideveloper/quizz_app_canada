




import 'package:quizz_app_canada/features/course/data/models/course_model.dart';

abstract class CourseRemoteDataSource {
  /// Retrieves all courses
  Future<List<CourseModel>> getAllCourses();

  /// Gets a specific course by ID
  Future<CourseModel> getCourseById(String id);

  /// Creates a new course
  Future<CourseModel> createCourse(CourseModel course);

  /// Updates an existing course
  Future<CourseModel> updateCourse(CourseModel course);

  /// Deletes a course by ID
  Future<void> deleteCourse(String id);

  /// Searches for courses matching a query string
  Future<List<CourseModel>> searchCourses(String query);
}
