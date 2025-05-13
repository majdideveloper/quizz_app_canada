



import 'package:quizz_app_canada/features/faq/data/models/faq_model.dart';

abstract class FaqRemoteDataSource {
  Future<List<FaqModel>> getAllFaqs();
  Future<List<FaqModel>> getVisibleFaqs();
  Future<FaqModel> createFaq(FaqModel faq);
  Future<FaqModel> updateFaq(FaqModel faq);
  Future<void> deleteFaq(String id);
}