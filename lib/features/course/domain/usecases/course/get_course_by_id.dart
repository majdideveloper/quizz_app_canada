import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';

class GetCourseById {
  final CourseRepository courseRepository;

  GetCourseById(this.courseRepository);

  Future<Either<Failure, CourseEntity>> call(String courseId) async {
    return await courseRepository.getCourseById(courseId);
  }
}
