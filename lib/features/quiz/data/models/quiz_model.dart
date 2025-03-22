import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'question_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@Freezed(fromJson: true, toJson: true, equal: true)
class QuizModel with _$QuizModel {
  const factory QuizModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @Default([]) List<QuestionModel> questions,
  }) = _QuizModel;

  factory QuizModel.fromJson(RecordModel model) {
    AppLogger.logger.d('QuizModel.fromJson: ${model.data}');
    final json = model.data;
    List<QuestionModel> questions = [];
    final questionsModel = model.expand['questions'] ?? [];
    if (questionsModel.isNotEmpty) {
      questions =
          questionsModel.map((q) {
            return QuestionModel.fromJson(q);
          }).toList();
    }

    final fromJson = _$QuizModelFromJson(json);
    return fromJson.copyWith(questions: questions);
  }
}
