import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'option_response_model.dart';
import 'package:quizz_app_canada/features/question/domain/entities/question_entity.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'hintWrongAnswer') required String hintWrongAnswer,
    @JsonKey(name: 'options') required List<OptionResponseModel> options,
    @JsonKey(name: 'correctOptionIndex') required int correctOptionIndex,
    @JsonKey(name: 'imageQuestion') String? imageQuestion,
    @JsonKey(name: 'categoryId') String? categoryId,
    @JsonKey(name: 'difficulty') String? difficulty,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  factory QuestionModel.fromEntity(QuestionEntity entity) {
    return QuestionModel(
      id: entity.id,
      title: entity.question,
      hintWrongAnswer: entity.explanation ?? '',
      options: entity.options
          .asMap()
          .entries
          .map((entry) => OptionResponseModel(
                id: '${entity.id}_${entry.key}',
                title: entry.value,
                imageResponse: null,
              ))
          .toList(),
      correctOptionIndex: entity.correctOptionIndex,
      imageQuestion: entity.imageUrl,
      categoryId: entity.categoryId,
      difficulty: entity.difficulty,
    );
  }
}

extension QuestionModelX on QuestionModel {
  QuestionEntity toEntity() {
    return QuestionEntity(
      id: id,
      question: title,
      options: options.map((o) => o.title).toList(),
      correctOptionIndex: correctOptionIndex,
      imageUrl: imageQuestion,
      categoryId: categoryId,
      difficulty: difficulty,
      explanation: hintWrongAnswer,
    );
  }
}
