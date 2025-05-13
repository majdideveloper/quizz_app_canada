import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';



part 'course_model.freezed.dart';
part 'course_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class CourseModel with _$CourseModel {
  const factory CourseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'content') required String content,
  }) = _CourseModel;

  factory CourseModel.fromJson(RecordModel record) {
    final json = Map<String, dynamic>.from(record.data ?? {});

    return CourseModel(
      id: record.id,
      title: json['title'] ?? 'Unknown',
      content: json['content'] ?? 'Unknown',
    );
  }
}
