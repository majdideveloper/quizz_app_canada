import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';

import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';

class DeleteCourse {
  final CourseRepository courseRepository;

  DeleteCourse(this.courseRepository);

  Future<Either<Failure, void>> call(String id) async {
    return await courseRepository.deleteCourse(id);
  }
}
