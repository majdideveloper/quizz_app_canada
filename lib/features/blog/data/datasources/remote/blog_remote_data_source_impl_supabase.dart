import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source.dart';
import 'package:quizz_app_canada/features/blog/data/models/blog_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BlogRemoteDataSourceImplSupabase implements BlogRemoteDataSource {
  final SupabaseClient supabase;

  BlogRemoteDataSourceImplSupabase({required this.supabase});

  static const String _tableName = 'posts';

  @override
  Future<BlogModel> createBlog(BlogModel blog) async {
    final response = await supabase
        .from(_tableName)
        .insert({
          'title': blog.title,
          'post': blog.post,
          'imagePost': blog.imagePost,
        })
        .select()
        .single();

    return BlogModel.fromSupabase(response);
  }

  @override
  Future<void> deleteBlog(String id) async {
    await supabase.from(_tableName).delete().eq('id', id);
  }

  @override
  Future<List<BlogModel>> getAllBlogs() async {
    final response = await supabase.from(_tableName).select();

    return (response as List)
        .map((json) => BlogModel.fromSupabase(json))
        .toList();
  }

  @override
  Future<BlogModel> getBlogById(String id) async {
    final response =
        await supabase.from(_tableName).select().eq('id', id).single();

    return BlogModel.fromSupabase(response);
  }

  @override
  Future<List<BlogModel>> searchBlogs(String query) async {
    final response = await supabase
        .from(_tableName)
        .select()
        .or('title.ilike.%$query%,post.ilike.%$query%');

    return (response as List)
        .map((json) => BlogModel.fromSupabase(json))
        .toList();
  }

  @override
  Future<BlogModel> updateBlog(BlogModel blog) async {
    final response = await supabase
        .from(_tableName)
        .update({
          'title': blog.title,
          'post': blog.post,
          'imagePost': blog.imagePost,
        })
        .eq('id', blog.id)
        .select()
        .single();

    return BlogModel.fromSupabase(response);
  }
}
