import 'package:quizz_app_canada/features/quiz/data/datasources/local/category_local_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/datasources/remote/category_remote_data_source.dart';
import 'package:quizz_app_canada/features/quiz/data/repositories/category_repository.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/category/category_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> quizServiceLocator() async {
  // * CUBITS INJECTION
  sl.registerFactory(() => CategoryCubit(categoryRepository: sl.call()));

  // * USE CASES INJECTION

  // * DATA SOURCES INJECTION
  sl.registerLazySingleton(() => CategoryRemoteDataSource(pb: sl.call()));

  sl.registerLazySingleton(
    () => CategoryLocalDataSource(sharedPreferences: sl.call()),
  );

  // * REPOSITORY & DATA SOURCES INJECTION
  //! This is an example of how to inject a repository with implementations of remote and local data sources
  // sl.registerLazySingleton<UserRepository>(
  //   () => UserRepositoryImpl(
  //     remoteDataSource: sl.call(),
  //     localDataSource: sl.call(),
  //     networkInfo: sl.call(),
  //     logger: sl.call(),
  //   ),
  // );

  sl.registerLazySingleton(
    () => CategoryRepository(
      networkInfo: sl.call(),
      remoteDataSource: sl.call(),
      localDataSource: sl.call(),
    ),
  );
}
