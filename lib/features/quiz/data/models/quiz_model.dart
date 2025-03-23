import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'question_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';


@Freezed(fromJson: true, toJson: true)
class QuizModel with _$QuizModel {
  const factory QuizModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'questions') required List<QuestionModel> questions,
  }) = _QuizModel;

  factory QuizModel.fromJson(RecordModel record) {
    final json = Map<String, dynamic>.from(record.data ?? {});
    final questions = (record.expand?['questions'] as List?)
        ?.map((question) => QuestionModel.fromJson(question as RecordModel))
        .toList();

    return QuizModel(
      id: record.id,
      title: json['title'] ?? 'Unknown',
      questions: questions ?? [],
    );
  }
}
