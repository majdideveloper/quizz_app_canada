import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';

part 'option_response_model.freezed.dart';
part 'option_response_model.g.dart';


@Freezed(fromJson: true, toJson: true)
class OptionResponseModel with _$OptionResponseModel {
  const factory OptionResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
  }) = _OptionResponseModel;

  factory OptionResponseModel.fromJson(RecordModel model) {
    final json = model.data ?? {};
    return OptionResponseModel(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Unknown',
    );
  }
}
