import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@Freezed(fromJson: true, toJson: true, equal: true)
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'question') required String question,
    @Default([]) List<OptionResponseModel> options,
    required OptionResponseModel correctOption,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(RecordModel model) {
    AppLogger.logger.d('QuestionModel.fromJson: ${model.data}');
    final json = model.data;

    json['id'] ??= model.id;
    // List<OptionResponseModel> options = [];
    // final optionsModel = model.expand['options'] ?? [];
    // if (optionsModel.isNotEmpty) {
    //   options =
    //       optionsModel.map((o) {
    //         return OptionResponseModel.fromJson(o);
    //       }).toList();
    // }

    final correctOptionModel = model.expand['correctOption'];
    final correctOption =
        correctOptionModel != null
            ? OptionResponseModel.fromJson(correctOptionModel.first)
            : null;

    final fromJson = _$QuestionModelFromJson(json);
    return fromJson.copyWith(correctOption: correctOption!);
  }
}
