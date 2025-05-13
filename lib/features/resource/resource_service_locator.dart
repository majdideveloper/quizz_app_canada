import 'package:quizz_app_canada/features/resource/data/datasources/resource_remote_data_source.dart';
import 'package:quizz_app_canada/features/resource/data/datasources/resource_remote_data_source_impl_supabase.dart';
import 'package:quizz_app_canada/features/resource/data/repositories/resource_repository_impl.dart';
import 'package:quizz_app_canada/features/resource/domain/repositories/resource_repository.dart';
import 'package:quizz_app_canada/features/resource/domain/usecases/get_resources.dart';
import 'package:quizz_app_canada/features/resource/presentation/cubit/resource_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> resourceServiceLocator() async {
  // Register the ResourceRemoteDataSource
  sl.registerLazySingleton<ResourceRemoteDataSource>(
    () => ResourceRemoteDataSourceImplSupabase(
      sl.call(),
    ),
  );

  // Register the ResourceRepository
  sl.registerLazySingleton<ResourceRepository>(
    () => ResourceRepositoryImpl(
      remoteDataSource: sl.call(),
    ),
  );

  // Register the GetResourcesUseCase
  sl.registerLazySingleton<GetResources>(
    () => GetResources(
      sl.call(),
    ),
  );

  // Register the ResourceCubit
  sl.registerFactory<ResourceCubit>(
    () => ResourceCubit(
      getResources: sl.call(),
    ),
  );
}
