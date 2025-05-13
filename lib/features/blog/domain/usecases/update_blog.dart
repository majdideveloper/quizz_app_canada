import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';

class UpdateBlogUseCase {
  final BlogRepository blogRepository;

  UpdateBlogUseCase(this.blogRepository);

  Future<Either<Failure, BlogEntity>> call(BlogEntity blog) async {
    return await blogRepository.updateBlog(blog);
  }
}
