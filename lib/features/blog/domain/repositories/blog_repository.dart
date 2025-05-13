


import 'package:dartz/dartz.dart';
import 'package:quizz_app_canada/core/failures/failure.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';

abstract class BlogRepository {
  /// Retrieves all blog posts
  Future<Either<Failure, List<BlogEntity>>> getAllBlogs();
  
  /// Gets a specific blog by ID
  Future<Either<Failure, BlogEntity>> getBlogById(String id);
  
  /// Creates a new blog post
  Future<Either<Failure, BlogEntity>> createBlog(BlogEntity blog);
  
  /// Updates an existing blog post
  Future<Either<Failure, BlogEntity>> updateBlog(BlogEntity blog);
  
  /// Deletes a blog post by ID
  Future<Either<Failure, void>> deleteBlog(String id);
  
  /// Searches for blogs matching a query string
  Future<Either<Failure, List<BlogEntity>>> searchBlogs(String query);
}