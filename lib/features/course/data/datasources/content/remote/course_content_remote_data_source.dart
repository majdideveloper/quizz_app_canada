



import 'package:quizz_app_canada/features/course/data/models/course_content_model.dart';

abstract class CourseContentRemoteDataSource {
  /// Retrieves all contents for a specific course
  Future<List<CourseContentModel>> getContentsByCourseId(String courseId);

  // Future<List<CourseContentModel>> getContentsByCourseIds(List<String> courseIds);

  /// Gets a specific course content by ID
  Future<CourseContentModel> getContentById(String id);

  /// Creates a new course content
  Future<CourseContentModel> createContent(CourseContentModel content);

  /// Updates an existing course content
  Future<CourseContentModel> updateContent(CourseContentModel content);

  /// Deletes a course content by ID
  Future<void> deleteContent(String id);
}
