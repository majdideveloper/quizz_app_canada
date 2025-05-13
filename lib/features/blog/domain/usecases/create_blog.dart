




import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';

class CreateBlogUseCase {
  final BlogRepository blogRepository;

  CreateBlogUseCase( this.blogRepository);

  Future<Either<Failure, BlogEntity>> call(BlogEntity blog) async {
    return await blogRepository.createBlog(blog);
  }
}