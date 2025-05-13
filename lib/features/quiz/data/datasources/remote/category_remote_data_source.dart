import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/core/errors/exceptions.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';

class CategoryRemoteDataSource {
  final PocketBase pb;

  CategoryRemoteDataSource({required this.pb});

  Future<CategoryModel> getCategory(String categoryId) async {
    try {
      final record = await pb.collection(NameCollections.categories).getOne(
            categoryId,
            expand: 'quizzes.questions.options,quizzes.questions.correctOption',
          );
      return CategoryModel.fromJson(record);
    } catch (e) {
      throw ServerException();
    }
  }

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response =
          await pb.collection(NameCollections.categories).getFullList(
                expand:
                    'quizzes.questions.options, quizzes.questions.correctOption, courses',
              );
      final requests =
          response.map((record) => CategoryModel.fromJson(record)).toList();

      return requests;
    } catch (e, strackTrace) {
      throw ServerException();
    }
  }
}
