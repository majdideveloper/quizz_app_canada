


import 'package:quizz_app_canada/features/resource/data/models/resource_model.dart';

abstract class ResourceRemoteDataSource {
  Future<List<ResourceModel>> getResources();
}