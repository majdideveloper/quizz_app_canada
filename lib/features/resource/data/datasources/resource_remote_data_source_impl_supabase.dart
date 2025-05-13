



import 'package:quizz_app_canada/features/resource/data/datasources/resource_remote_data_source.dart';
import 'package:quizz_app_canada/features/resource/data/models/resource_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ResourceRemoteDataSourceImplSupabase implements ResourceRemoteDataSource {
  final SupabaseClient client;

  ResourceRemoteDataSourceImplSupabase(this.client);

  @override
  Future<List<ResourceModel>> getResources() async {
    final response = await client.from('resources').select().order('created_at', ascending: false);

    return (response as List)
        .map((json) => ResourceModel.fromSupabase(json as Map<String, dynamic>))
        .toList();
  }
}