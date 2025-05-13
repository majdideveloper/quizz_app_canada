


import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';

class GetAllBlogsUseCase{
  final BlogRepository repository;

  GetAllBlogsUseCase(this.repository);

  @override
  Future<Either<Failure, List<BlogEntity>>> call() {
    return repository.getAllBlogs();
  }
}