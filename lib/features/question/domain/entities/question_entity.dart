import 'package:equatable/equatable.dart';

class QuestionEntity extends Equatable {
  final String id;
  final String question;
  final List<String> options;
  final int correctOptionIndex;
  final String? imageUrl;
  final String? categoryId;
  final String? difficulty;
  final String? explanation;

  const QuestionEntity({
    required this.id,
    required this.question,
    required this.options,
    required this.correctOptionIndex,
    this.imageUrl,
    this.categoryId,
    this.difficulty,
    this.explanation,
  });

  @override
  List<Object?> get props => [
        id,
        question,
        options,
        correctOptionIndex,
        imageUrl,
        categoryId,
        difficulty,
        explanation
      ];
}
