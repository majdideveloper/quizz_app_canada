import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/quiz_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';


@Freezed(fromJson: true, toJson: true)
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'quizzes') required List<QuizModel> quizzes,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(RecordModel record) {
    final json = Map<String, dynamic>.from(record.data ?? {});
    final quizzes = (record.expand?['quizzes'] as List?)
        ?.map((quiz) => QuizModel.fromJson(quiz as RecordModel))
        .toList();

    return CategoryModel(
      id: record.id,
      name: json['name'] ?? 'Unknown',
      quizzes: quizzes ?? [],
    );
  }
}
