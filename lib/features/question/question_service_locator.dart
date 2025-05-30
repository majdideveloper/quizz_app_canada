import 'package:quizz_app_canada/features/question/data/datasources/remote/question_remote_data_source.dart';
import 'package:quizz_app_canada/features/question/data/datasources/remote/question_remote_data_source_impl.dart';
import 'package:quizz_app_canada/features/question/data/repositories/question_repository.dart';
import 'package:quizz_app_canada/features/question/domain/repositories/question_repository.dart';
import 'package:quizz_app_canada/features/question/domain/usecases/add_question.dart';
import 'package:quizz_app_canada/features/question/domain/usecases/delete_question.dart';
import 'package:quizz_app_canada/features/question/domain/usecases/get_questions.dart';
import 'package:quizz_app_canada/features/question/domain/usecases/update_question.dart';
import 'package:quizz_app_canada/features/question/domain/usecases/update_question_image.dart';
import 'package:quizz_app_canada/features/question/presentation/cubit/question_cubit.dart';
import 'package:quizz_app_canada/service_locator.dart';
import 'package:quizz_app_canada/core/storage/storage_service.dart';
import 'package:quizz_app_canada/core/storage/storage_service_impl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> questionServiceLocator() async {
  // Data sources
  sl.registerLazySingleton<QuestionRemoteDataSource>(() =>
      QuestionRemoteDataSourceImpl(
          client: sl.call(), storageService: sl.call()));

  // Repository
  sl.registerLazySingleton<QuestionRepository>(
    () => QuestionRepositoryImpl(remoteDataSource: sl.call()),
  );

  // Usecases
  sl.registerLazySingleton(() => GetQuestions(sl.call()));
  sl.registerLazySingleton(() => AddQuestion(sl.call()));
  sl.registerLazySingleton(() => UpdateQuestion(sl.call()));
  sl.registerLazySingleton(() => DeleteQuestion(sl.call()));
  sl.registerLazySingleton(() => UpdateQuestionImage(sl.call()));

  // Cubit
  sl.registerFactory(() => QuestionCubit(
        getQuestionsUseCase: sl.call(),
        addQuestionUseCase: sl.call(),
        updateQuestionUseCase: sl.call(),
        deleteQuestionUseCase: sl.call(),
        updateQuestionImageUseCase: sl.call(),
      ));

  // Storage Service
  sl.registerLazySingleton<StorageService>(
    () => SupabaseStorageService(client: sl<SupabaseClient>()),
  );
}
