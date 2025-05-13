





import 'package:quizz_app_canada/features/faq/data/datasources/faq_remote_datasource.dart';
import 'package:quizz_app_canada/features/faq/data/datasources/faq_remote_datasource_impl_supabase.dart';
import 'package:quizz_app_canada/features/faq/data/repositories/faq_repository_impl.dart';
import 'package:quizz_app_canada/features/faq/domain/repositories/faq_repository.dart';
import 'package:quizz_app_canada/features/faq/domain/usecases/get_all_faqs.dart';

import 'package:quizz_app_canada/features/faq/presentation/cubit/faq_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';

Future<void> faqServiceLocator() async {
  // * CUBITS INJECTION
  sl.registerFactory(() => FaqCubit(
        getAllFaqsUseCase: sl.call(),
      ));

  // * USE CASES INJECTION
  sl.registerLazySingleton(() => GetAllFaqs(sl.call()));

  // * DATA SOURCE INJECTION
  sl.registerLazySingleton<FaqRemoteDataSource>(
    () => FaqRemoteDataSourceImplSupabase(
      sl.call(),
    ),
  );

  // * REPOSITORY INJECTION
  sl.registerLazySingleton<FaqRepository>(
    () => FaqRepositoryImpl(
      remoteDataSource: sl.call(),
    ),
  );
}