import 'package:shared_preferences/shared_preferences.dart';

class QuizService {
  static const String hasTestedQuizKey = 'hasTestedQuiz';

  /// Check if user has already taken the free quiz
  Future<bool> hasUserTestedQuiz() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(hasTestedQuizKey) ?? false;
  }

  /// Set that the user has taken the free quiz
  Future<void> setUserTestedQuiz() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(hasTestedQuizKey, true);
  }
}