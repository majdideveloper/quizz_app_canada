import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source.dart';
import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source_impl_pocketbase.dart';
import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source_impl_supabase.dart';
import 'package:quizz_app_canada/features/blog/data/repositories/blog_repository_impl.dart';
import 'package:quizz_app_canada/features/blog/domain/repositories/blog_repository.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/create_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/delete_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/get_blog_by_id.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/search_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/update_blog.dart';
import 'package:quizz_app_canada/features/blog/presentation/cubit/blog_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> blogServiceLocator() async {
  // * CUBITS INJECTION
  sl.registerFactory(() => BlogCubit(
        getAllBlogsUseCase: sl.call(),
        getBlogByIdUseCase: sl.call(),
        createBlogUseCase: sl.call(),
        updateBlogUseCase: sl.call(),
        deleteBlogUseCase: sl.call(),
        searchBlogsUseCase: sl.call(),
      ));

// * USE CASES INJECTION
  sl.registerLazySingleton(() => GetAllBlogsUseCase(sl.call()));
  sl.registerLazySingleton(() => GetBlogByIdUseCase(sl.call()));
  sl.registerLazySingleton(() => CreateBlogUseCase(sl.call()));
  sl.registerLazySingleton(() => UpdateBlogUseCase(sl.call()));
  sl.registerLazySingleton(() => DeleteBlogUseCase(sl.call()));
  sl.registerLazySingleton(() => SearchBlogsUseCase(sl.call()));

  // * DATA SOURCES INJECTION
  // sl.registerLazySingleton<BlogRemoteDataSource>(
  //     () => BlogRemoteDataSourceImpl(pocketBase: sl.call()));

  sl.registerLazySingleton<BlogRemoteDataSource>(
      () => BlogRemoteDataSourceImplSupabase(
            supabase: sl.call(),
          ));

  // * REPOSITORY & DATA SOURCES INJECTION
  sl.registerLazySingleton<BlogRepository>(() => BlogRepositoryImpl(
        remoteDataSource: sl.call(),
      ));
}
