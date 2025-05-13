

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/course_content_entity.dart';

part 'course_content_model.freezed.dart';
part 'course_content_model.g.dart';

@freezed
class CourseContentModel with _$CourseContentModel {
  const CourseContentModel._();

  const factory CourseContentModel({
    required String id,
    required String courseId,
    required String type, // 'text', 'image', 'video'
    required String value,
    required int order,
  }) = _CourseContentModel;

  factory CourseContentModel.fromJson(Map<String, dynamic> json) =>
      _$CourseContentModelFromJson(json);

  factory CourseContentModel.fromSupabase(Map<String, dynamic> json) {
    return CourseContentModel(
      id: json['id'].toString(),
      courseId: json['course_id'], // or adjust based on your DB field
      type: json['type'],
      value: json['value'],
      order: json['order'],
    );
  }

  CourseContentEntity toEntity() => CourseContentEntity(
        id: id,
        courseId: courseId,
        type: type,
        value: value,
        order: order,
      );
}

