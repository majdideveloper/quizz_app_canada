




import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';

extension OptionResponseModelX on OptionResponseModel {
  String? getImageUrl(String baseUrl, String collectionId) {
    if (imageResponse == null || imageResponse!.isEmpty) return null;
    return '$baseUrl/api/files/$collectionId/$id/$imageResponse';
  }
}