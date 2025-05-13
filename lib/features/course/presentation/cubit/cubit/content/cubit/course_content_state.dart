part of 'course_content_cubit.dart';

@freezed
class CourseContentState with _$CourseContentState {
  const factory CourseContentState.initial() = CourseContentInitial;
  const factory CourseContentState.loading() = CourseContentLoading;
  const factory CourseContentState.loaded(List<CourseContentEntity> contents) = CourseContentLoaded;
  const factory CourseContentState.success(String message) = CourseContentSuccess;
  const factory CourseContentState.failure(String message) = CourseContentFailure;
}
