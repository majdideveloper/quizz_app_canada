import 'package:quizz_app_canada/features/quiz/data/models/quiz_model.dart';
//! here we need to work on it to make more redable and easy to understand
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class QuizLocalDataSource {
  final SharedPreferences sharedPreferences;

  QuizLocalDataSource({required this.sharedPreferences});

  Future<void> cacheQuiz(QuizModel quiz) async {
    await sharedPreferences.setString('cached_quiz', jsonEncode(quiz.toJson()));
  }

  Future<QuizModel?> getCachedQuiz() async {
    final cachedData = sharedPreferences.getString('cached_quiz');
    if (cachedData != null) {
      return QuizModel.fromJson(jsonDecode(cachedData));
    }
    return null;
  }
}
