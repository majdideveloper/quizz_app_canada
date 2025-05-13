

import 'package:supabase_flutter/supabase_flutter.dart';
import 'faq_remote_datasource.dart';
import '../models/faq_model.dart';

class FaqRemoteDataSourceImplSupabase implements FaqRemoteDataSource {
  final SupabaseClient client;

  FaqRemoteDataSourceImplSupabase(this.client);

  @override
  Future<List<FaqModel>> getAllFaqs() async {
    final response = await client
        .from('faqs')
        .select()
        .order('order', ascending: true);

    return (response as List)
        .map((e) => FaqModel.fromSupabase(e))
        .toList();
  }

  @override
  Future<List<FaqModel>> getVisibleFaqs() async {
    final response = await client
        .from('faqs')
        .select()
        .eq('visible', true)
        .order('order', ascending: true);

    return (response as List)
        .map((e) => FaqModel.fromSupabase(e))
        .toList();
  }

  @override
  Future<FaqModel> createFaq(FaqModel faq) async {
     final response =
        await client.from('faqs').insert(faq.toJson()).select().single();
    return FaqModel.fromSupabase(response);
  }

  @override
  Future<FaqModel> updateFaq(FaqModel faq) async {
    final response = await client
        .from('faqs')
        .update(faq.toJson())
        .eq('id', faq.id)
        .select()
        .single();
    return FaqModel.fromSupabase(response);
  }

  @override
  Future<void> deleteFaq(String id) async {
    await client.from('faqs').delete().eq('id', id);
  }
}
