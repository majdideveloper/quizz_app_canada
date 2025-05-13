import 'package:quizz_app_canada/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:quizz_app_canada/features/auth/data/datasources/auth_remote_data_source_impl_supabase.dart';
import 'package:quizz_app_canada/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:quizz_app_canada/features/auth/domain/repositories/auth_repository.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/get_current_user.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_in.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_out.dart';
import 'package:quizz_app_canada/features/auth/domain/usecases/sign_up.dart';
import 'package:quizz_app_canada/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> authServiceLocator() async {
  // * CUBITS INJECTION
  sl.registerFactory(() => AuthCubit(
        signInUseCase: sl.call(),
        signUpUseCase: sl.call(),
        getCurrentUserUseCase: sl.call(),
        signOutUseCase: sl.call(),
      ));

  // * USE CASES INJECTION
  sl.registerLazySingleton(() => SignInUseCase(sl.call()));
  sl.registerLazySingleton(() => SignUpUseCase(sl.call()));
  sl.registerLazySingleton(() => GetCurrentUserUseCase(sl.call()));
  sl.registerLazySingleton(() => SignOutUseCase(sl.call()));

  // * DATA SOURCES INJECTION
  // sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(
  //       pocketBase: sl.call(),
  //     ));
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImplSupabase(
        supabase: sl.call(),
      ));

  // * REPOSITORY & DATA SOURCES INJECTION

  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl.call()));
}
