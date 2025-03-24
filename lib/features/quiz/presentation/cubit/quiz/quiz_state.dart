part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required bool hasTestedQuiz,
    required bool isLoading,
    String? errorMessage,
  }) = _QuizState;

  factory QuizState.initial() => const QuizState(
        hasTestedQuiz: false,
        isLoading: false,
        errorMessage: null,
      );
}
