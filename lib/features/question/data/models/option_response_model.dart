import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'option_response_model.freezed.dart';
part 'option_response_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class OptionResponseModel with _$OptionResponseModel {
  const factory OptionResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'imageResponse') String? imageResponse,
  }) = _OptionResponseModel;

  factory OptionResponseModel.fromJson(RecordModel model) {
    final json = model.data ?? {};
    return OptionResponseModel(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Unknown',
      imageResponse: json['imageResponse'],
    );
  }
}
