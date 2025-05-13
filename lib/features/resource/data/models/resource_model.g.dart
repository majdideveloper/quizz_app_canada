// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceModelImpl _$$ResourceModelImplFromJson(Map<String, dynamic> json) =>
    _$ResourceModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isNew: json['isNew'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ResourceModelImplToJson(_$ResourceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'isNew': instance.isNew,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
