import 'dart:convert';

import 'package:quizz_app_canada/core/errors/exceptions.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String CACHED_CATEGORIES = 'CACHED_CATEGORIES';

class CategoryLocalDataSource {
  final SharedPreferences sharedPreferences;

  CategoryLocalDataSource({required this.sharedPreferences});

  Future<void> cacheCategories(List<CategoryModel> categories) async {
    final jsonString = json.encode(categories.map((e) => e.toJson()).toList());
    await sharedPreferences.setString(CACHED_CATEGORIES, jsonString);
  }

  Future<List<CategoryModel>> getCachedCategories() async {
    final jsonString = sharedPreferences.getString(CACHED_CATEGORIES);

    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList.map((json) => CategoryModel.fromJson(json)).toList();
    } else {
      throw CacheException();
    }
  }
}
