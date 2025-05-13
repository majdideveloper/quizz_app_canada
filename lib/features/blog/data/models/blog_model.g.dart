// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      post: json['post'] as String,
      imagePost: json['imagePost'] as String?,
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'post': instance.post,
      'imagePost': instance.imagePost,
    };
