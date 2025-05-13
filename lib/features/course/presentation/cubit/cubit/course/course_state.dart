part of 'course_cubit.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.initial() = CourseInitial;
  const factory CourseState.loading() = CourseLoading;
  const factory CourseState.loaded(List<CourseEntity> courses) = CourseLoaded;
  const factory CourseState.success(String message) = CourseSuccess;
  const factory CourseState.failure(String message) = CourseFailure;
}
