


import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';

class GetAllCourses {
  final CourseRepository repository;

  GetAllCourses(this.repository);

  Future<Either<Failure, List<CourseEntity>>> call() {
    return repository.getAllCourses();
  }
}