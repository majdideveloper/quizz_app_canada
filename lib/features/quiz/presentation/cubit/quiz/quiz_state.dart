part of 'quiz_cubit.dart';

// @freezed
// class QuizState with _$QuizState {
//   const factory QuizState({
//     required bool hasTestedQuiz,
//     required bool isLoading,
//     String? errorMessage,
//   }) = _QuizState;

//   factory QuizState.initial() => const QuizState(
//         hasTestedQuiz: false,
//         isLoading: false,
//         errorMessage: null,
//       );
// }
@freezed
class QuizState with _$QuizState {
  const factory QuizState.initial() = _Initial;
  const factory QuizState.loading() = _Loading;
  const factory QuizState.loaded(List<QuestionModel> questions) = _Loaded;
  const factory QuizState.error(String message) = _Error;
}