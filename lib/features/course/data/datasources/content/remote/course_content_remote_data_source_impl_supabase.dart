import 'package:quizz_app_canada/features/course/data/datasources/content/remote/course_content_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/models/course_content_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CourseContentRemoteDataSourceImplSupabase
    implements CourseContentRemoteDataSource {
  final SupabaseClient client;

  CourseContentRemoteDataSourceImplSupabase(this.client);

  @override
  Future<List<CourseContentModel>> getContentsByCourseId(
      String courseId) async {
    final response = await client
        .from('course_contents')
        .select()
        .eq('course_id', courseId)
        .order('order', ascending: true);
    return (response as List)
        .map((e) => CourseContentModel.fromSupabase(e))
        .toList();
  }

  @override
  Future<CourseContentModel> getContentById(String id) async {
    final response =
        await client.from('course_contents').select().eq('id', id).single();
    return CourseContentModel.fromSupabase(response);
  }

  @override
  Future<CourseContentModel> createContent(CourseContentModel content) async {
    final response = await client
        .from('course_contents')
        .insert(content.toJson())
        .select()
        .single();
    return CourseContentModel.fromSupabase(response);
  }

  @override
  Future<CourseContentModel> updateContent(CourseContentModel content) async {
    final response = await client
        .from('course_contents')
        .update(content.toJson())
        .eq('id', content.id)
        .select()
        .single();
    return CourseContentModel.fromSupabase(response);
  }

  @override
  Future<void> deleteContent(String id) async {
    await client.from('course_contents').delete().eq('id', id);
  }
}
