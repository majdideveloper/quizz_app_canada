import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';

part 'option_response_model.freezed.dart';
part 'option_response_model.g.dart';

@Freezed(fromJson: true, toJson: true, equal: true)
class OptionResponseModel with _$OptionResponseModel {
  const factory OptionResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'text') required String text,
  }) = _OptionResponseModel;

  factory OptionResponseModel.fromJson(RecordModel model) {
    AppLogger.logger.d('OptionResponseModel.fromJson: ${model.data}');

    final json = model.data;

    json['id'] ??= model.id;

    final fromJson = _$OptionResponseModelFromJson(json);
    return fromJson.copyWith();
  }
}
