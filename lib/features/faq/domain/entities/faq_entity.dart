


import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_entity.freezed.dart';
@freezed
class FaqEntity with _$FaqEntity {
  const factory FaqEntity({
    required String id,
    required String question,
    required String answer,
    String? category,
    int? order,
    @Default(true) bool visible,
    DateTime? createdAt,
  }) = _FaqEntity;
}
