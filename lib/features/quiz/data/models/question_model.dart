import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';


@Freezed(fromJson: true, toJson: true)
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'options') required List<OptionResponseModel> options,
    @JsonKey(name: 'correctOption') required OptionResponseModel correctOption,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(RecordModel record) {
    final json = Map<String, dynamic>.from(record.data ?? {});
    final options = (record.expand?['options'] as List?)
        ?.map((option) => OptionResponseModel.fromJson(option as RecordModel))
        .toList();

    final correctOptionModel = record.expand?['correctOption'];
    final correctOption = correctOptionModel != null
        ? OptionResponseModel.fromJson(correctOptionModel.first)
        : OptionResponseModel(id: '', text: '');

    return QuestionModel(
      id: record.id,
      text: json['text'] ?? 'Unknown Question',
      options: options ?? [],
      correctOption: correctOption,
    );
  }
}
