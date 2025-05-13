// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
      category: json['category'] as String?,
      order: (json['order'] as num?)?.toInt(),
      visible: json['visible'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'category': instance.category,
      'order': instance.order,
      'visible': instance.visible,
      'created_at': instance.createdAt?.toIso8601String(),
    };
