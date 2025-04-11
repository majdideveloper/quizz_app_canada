

import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';

extension QuestionModelX on QuestionModel {
  String? getImageUrl(String baseUrl, String collectionId) {
    if (imageQuestion == null || imageQuestion!.isEmpty) return null;
    return '$baseUrl/api/files/$collectionId/$id/$imageQuestion';
  }
}