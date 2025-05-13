import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';

import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';

class DeleteBlogUseCase {
  final BlogRepository blogRepository;

  DeleteBlogUseCase(this.blogRepository);

  Future<Either<Failure, void>> call(String id) async {
    return await blogRepository.deleteBlog(id);
  }
}
