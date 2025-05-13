import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';

class SearchBlogsUseCase {
  final BlogRepository blogRepository;

  SearchBlogsUseCase(this.blogRepository);

  Future<Either<Failure, List<BlogEntity>>> call(String query) async {
    return await blogRepository.searchBlogs(query);
  }
}
