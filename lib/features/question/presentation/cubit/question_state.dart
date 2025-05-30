part of 'question_cubit.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;
  const factory QuestionState.loading() = _Loading;
  const factory QuestionState.loaded(List<QuestionEntity> questions) = _Loaded;
  const factory QuestionState.error(String message) = _Error;
}
