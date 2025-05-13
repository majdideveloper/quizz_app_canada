// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseContentModelImpl _$$CourseContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseContentModelImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      type: json['type'] as String,
      value: json['value'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseContentModelImplToJson(
        _$CourseContentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'type': instance.type,
      'value': instance.value,
      'order': instance.order,
    };
