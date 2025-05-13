



import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source.dart';
import 'package:quizz_app_canada/features/blog/data/models/blog_model.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';


class BlogRepositoryImpl implements BlogRepository {
  final BlogRemoteDataSource remoteDataSource;

  BlogRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, BlogEntity>> createBlog(BlogEntity blog) async {
    try {
      final model = BlogModel(
        id: blog.id,
        title: blog.title,
        post: blog.post,
        imagePost: blog.imagePost,
      );
      final result = await remoteDataSource.createBlog(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteBlog(String id) async {
    try {
      await remoteDataSource.deleteBlog(id);
      return const Right(null);
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogEntity>>> getAllBlogs() async {
    try {
      final result = await remoteDataSource.getAllBlogs();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BlogEntity>> getBlogById(String id) async {
    try {
      final result = await remoteDataSource.getBlogById(id);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogEntity>>> searchBlogs(String query) async {
    try {
      final result = await remoteDataSource.searchBlogs(query);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BlogEntity>> updateBlog(BlogEntity blog) async {
    try {
      final model = BlogModel(
        id: blog.id,
        title: blog.title,
        post: blog.post,
        imagePost: blog.imagePost,
      );
      final result = await remoteDataSource.updateBlog(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.serverFailure(e.toString()));
    }
  }
}
