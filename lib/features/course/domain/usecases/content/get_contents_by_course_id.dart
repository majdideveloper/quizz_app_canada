



import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_content_repository.dart';

class GetContentsByCourseId {
  final CourseContentRepository courseContentRepository;

  GetContentsByCourseId(this.courseContentRepository);

  Future<Either<Failure, List<CourseContentEntity>>> call(String courseId) async {
    return await courseContentRepository.getContentsByCourseId(courseId);
  }
}