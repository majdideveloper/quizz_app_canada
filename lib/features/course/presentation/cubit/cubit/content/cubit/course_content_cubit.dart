import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/content/get_contents_by_course_id.dart';

part 'course_content_state.dart';
part 'course_content_cubit.freezed.dart';

class CourseContentCubit extends Cubit<CourseContentState> {
  final GetContentsByCourseId getContentsByCourseId;
  // final CreateCourseContentUseCase createCourseContentUseCase;
  // final DeleteCourseContentUseCase deleteCourseContentUseCase;

  CourseContentCubit({
    required this.getContentsByCourseId,
    // required this.createCourseContentUseCase,
    // required this.deleteCourseContentUseCase,
  }) : super(const CourseContentState.initial());

  void getCourseContents(String courseId) async {
    emit(const CourseContentState.loading());
    final result = await getContentsByCourseId(courseId);
    result.fold(
      (failure) => emit(CourseContentState.failure(failure.defaultMessage)),
      (contents) => emit(CourseContentState.loaded(contents)),
    );
  }

  // void createCourseContent(CourseContentEntity content) async {
  //   emit(const CourseContentState.loading());
  //   final result = await createCourseContentUseCase(content);
  //   result.fold(
  //     (failure) => emit(CourseContentState.failure(failure.defaultMessage)),
  //     (_) => emit(CourseContentState.success("Course content created successfully")),
  //   );
  //   getCourseContents(content.courseId);
  // }

  // void deleteCourseContent(String courseId, String contentId) async {
  //   emit(const CourseContentState.loading());
  //   final result = await deleteCourseContentUseCase(courseId, contentId);
  //   result.fold(
  //     (failure) => emit(CourseContentState.failure(failure.defaultMessage)),
  //     (_) => emit(CourseContentState.success("Course content deleted successfully")),
  //   );
  //   getCourseContents(courseId);
  // }
}