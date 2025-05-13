import 'package:quizz_app_canada/features/blog/data/models/blog_model.dart';

abstract class BlogRemoteDataSource {
  /// Retrieves all blog posts
  Future<List<BlogModel>> getAllBlogs();

  /// Gets a specific blog by ID
  Future<BlogModel> getBlogById(String id);

  /// Creates a new blog post
  Future<BlogModel> createBlog(BlogModel blog);

  /// Updates an existing blog post
  Future<BlogModel> updateBlog(BlogModel blog);

  /// Deletes a blog post by ID
  Future<void> deleteBlog(String id);

  /// Searches for blogs matching a query string
  Future<List<BlogModel>> searchBlogs(String query);
}
