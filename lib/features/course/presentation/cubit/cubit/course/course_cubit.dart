import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/create_course.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/delete_course.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/get_all_courses.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/get_course_by_id.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/update_course.dart';

part 'course_state.dart';
part 'course_cubit.freezed.dart';

class CourseCubit extends Cubit<CourseState> {
  final GetAllCourses getAllCoursesUseCase;
  final GetCourseById getCourseByIdUseCase;
  final CreateCourse createCourseUseCase;
  final UpdateCourse updateCourseUseCase;
  final DeleteCourse deleteCourseUseCase;

  CourseCubit({
    required this.getAllCoursesUseCase,
    required this.getCourseByIdUseCase,
    required this.createCourseUseCase,
    required this.updateCourseUseCase,
    required this.deleteCourseUseCase,
  }) : super(const CourseState.initial());

  void getAllCourses() async {
    emit(const CourseState.loading());
    final result = await getAllCoursesUseCase();
    result.fold(
      (failure) => emit(CourseState.failure(failure.defaultMessage)),
      (courses) => emit(CourseState.loaded(courses)),
    );
  }

  // void getCourseById(String id) async {
  //   emit(const CourseState.loading());
  //   final result = await getCourseByIdUseCase(id);
  //   result.fold(
  //     (failure) => emit(CourseState.failure(failure.defaultMessage)),
  //     (course) => emit(CourseState.singleLoaded(course)),
  //   );
  // }

  void createCourse(CourseEntity course) async {
    emit(const CourseState.loading());
    final result = await createCourseUseCase(course);
    result.fold(
      (failure) => emit(CourseState.failure(failure.defaultMessage)),
      (_) => emit(CourseState.success("Course created successfully")),
    );
    getAllCourses();
  }

  void updateCourse(CourseEntity course) async {
    emit(const CourseState.loading());
    final result = await updateCourseUseCase(course);
    result.fold(
      (failure) => emit(CourseState.failure(failure.defaultMessage)),
      (_) => emit(CourseState.success("Course updated successfully")),
    );
    getAllCourses();
  }

  void deleteCourse(String id) async {
    emit(const CourseState.loading());
    final result = await deleteCourseUseCase(id);
    result.fold(
      (failure) => emit(CourseState.failure(failure.defaultMessage)),
      (_) => emit(CourseState.success("Course deleted successfully")),
    );
    getAllCourses();
  }
}
