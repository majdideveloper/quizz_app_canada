import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
class FaqModel with _$FaqModel {
  const FaqModel._();

  const factory FaqModel({
    required String id,
    required String question,
    required String answer,
    String? category,
    int? order,
    @Default(true) bool visible,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);

  factory FaqModel.fromSupabase(Map<String, dynamic> json) {
    return FaqModel(
      id: json['id'].toString(),
      question: json['question'] ?? '',
      answer: json['answer'] ?? '',
      category: json['category'],
      order: json['order'],
      visible: json['visible'] ?? true,
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at'])
          : null,
    );
  }

  FaqEntity toEntity() => FaqEntity(
        id: id,
        question: question,
        answer: answer,
        category: category,
        order: order,
        visible: visible,
        createdAt: createdAt,
      );
}
