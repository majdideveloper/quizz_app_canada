


import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_content_entity.freezed.dart';

@freezed
class CourseContentEntity with _$CourseContentEntity {
  const factory CourseContentEntity({
    required String id,
    required String courseId,
    required String type, // 'text', 'image', 'video'
    required String value,
    int? order,
  }) = _CourseContentEntity;
}