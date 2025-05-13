import 'package:quizz_app_canada/features/course/data/datasources/content/remote/course_content_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/datasources/content/remote/course_content_remote_data_source_impl_supabase.dart';
import 'package:quizz_app_canada/features/course/data/datasources/course/remote/course_remote_data_source.dart';
import 'package:quizz_app_canada/features/course/data/datasources/course/remote/course_remote_data_source_impl_supabase.dart';
import 'package:quizz_app_canada/features/course/data/repositories/course_repository_impl.dart';
import 'package:quizz_app_canada/features/course/domain/repositories/course_repository.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/create_course.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/delete_course.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/get_all_courses.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/get_course_by_id.dart';
import 'package:quizz_app_canada/features/course/domain/usecases/course/update_course.dart';
import 'package:quizz_app_canada/features/course/presentation/cubit/cubit/course/course_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> courseServiceLocator() async {
  // * CUBITS INJECTION
  sl.registerFactory(() => CourseCubit(
        getAllCoursesUseCase: sl.call(),
        getCourseByIdUseCase: sl.call(),
        createCourseUseCase: sl.call(),
        updateCourseUseCase: sl.call(),
        deleteCourseUseCase: sl.call(),
      ));

  // * USE CASES INJECTION
  sl.registerLazySingleton(() => GetAllCourses(sl.call()));
  sl.registerLazySingleton(() => GetCourseById(sl.call()));
  sl.registerLazySingleton(() => CreateCourse(sl.call()));
  sl.registerLazySingleton(() => UpdateCourse(sl.call()));
  sl.registerLazySingleton(() => DeleteCourse(sl.call()));

  // * DATA SOURCE INJECTION
  sl.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSourceImplSupabase(
      sl.call(),
    ),
  );
   sl.registerLazySingleton<CourseContentRemoteDataSource>(
    () => CourseContentRemoteDataSourceImplSupabase(
      sl.call(),
    ),
  );
  // * REPOSITORY INJECTION
  sl.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(
      remoteDataSource: sl.call(),
      courseContentRemoteDataSource: sl.call(),
    ),
  );
}
