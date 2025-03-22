import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/quiz_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

// @Freezed(fromJson: true, toJson: true, equal: true)
// class CategoryModel with _$CategoryModel {
//   const factory CategoryModel({
//     @JsonKey(name: 'id') required String id,
//     @JsonKey(name: 'name') required String name,
//     @Default([]) List<QuizModel> quizzes,
//   }) = _CategoryModel;

//   factory CategoryModel.fromJson(RecordModel model) {
//     AppLogger.logger.d('CategoryModel.fromJson: ${model.data}');
//     final json = model.data;

//     json['id'] ??= model.id;

//     List<QuizModel> quizzes = [];
//     final quizzesModel = model.expand['quizzes'] ?? [];
//     if (quizzesModel.isNotEmpty) {
//       quizzes =
//           quizzesModel.map((q) {
//             return QuizModel.fromJson(q);
//           }).toList();
//     }
//     final fromJson = _$CategoryModelFromJson(json);
//     return fromJson.copyWith(quizzes: quizzes);
//   }
// }

@Freezed(fromJson: true, toJson: true, equal: true)
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @Default([]) List<QuizModel> quizzes,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(RecordModel model) {
    // Debugging: Log the JSON data
    AppLogger.logger.d('CategoryModel.fromJson: ${model.data}');

    // Ensure the JSON map is not null
    final json = model.data ?? {};

    // Set the ID from the model if not present in the JSON
    json['id'] ??= model.id;

    // Map nested quizzes from the 'expand' field
    List<QuizModel> quizzes = [];
    final quizzesModel = model.expand?['quizzes'] as List<dynamic>? ?? [];
    if (quizzesModel.isNotEmpty) {
      quizzes =
          quizzesModel.map((q) {
            return QuizModel.fromJson(q);
          }).toList();
    }

    // Deserialize the JSON using the generated Freezed method
    final fromJson = _$CategoryModelFromJson(json);

    // Return the deserialized object with the nested quizzes
    return fromJson.copyWith(quizzes: quizzes);
  }
}
