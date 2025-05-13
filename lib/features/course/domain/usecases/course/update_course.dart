




import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';

class UpdateCourse {
  final CourseRepository courseRepository;

  UpdateCourse(this.courseRepository);

  Future<Either<Failure, CourseEntity>> call(CourseEntity course) async {
    return await courseRepository.updateCourse(course);
  }
}