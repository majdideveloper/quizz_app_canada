import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/course/data/datasources/course/remote/course_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/models/course_model.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class CourseRemoteDataSourceImplSupabase implements CourseRemoteDataSource {
  final SupabaseClient client;

  CourseRemoteDataSourceImplSupabase(this.client);

  @override
  Future<List<CourseModel>> getAllCourses() async {
    final response = await client.from('courses').select();

    return (response as List).map((e) => CourseModel.fromSupabase(e)).toList();
  }

  @override
  Future<CourseModel> getCourseById(String id) async {
    final response =
        await client.from('courses').select().eq('id', id).single();
    return CourseModel.fromSupabase(response);
  }

  @override
  Future<CourseModel> createCourse(CourseModel course) async {
    final response =
        await client.from('courses').insert(course.toJson()).select().single();
    return CourseModel.fromSupabase(response);
  }

  @override
  Future<CourseModel> updateCourse(CourseModel course) async {
    final response = await client
        .from('courses')
        .update(course.toJson())
        .eq('id', course.id)
        .select()
        .single();
    return CourseModel.fromSupabase(response);
  }

  @override
  Future<void> deleteCourse(String id) async {
    await client.from('courses').delete().eq('id', id);
  }

  @override
  Future<List<CourseModel>> searchCourses(String query) async {
    final response =
        await client.from('courses').select().ilike('title', '%$query%');
    return (response as List).map((e) => CourseModel.fromSupabase(e)).toList();
  }
}
