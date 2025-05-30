import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/core/network/network_info.dart';
import 'package:quizz_app_canada/core/secrets/app_secrets.dart';
import 'package:quizz_app_canada/features/auth/auth_service_locator.dart';
import 'package:quizz_app_canada/features/blog/blog_service_locator.dart';
import 'package:quizz_app_canada/features/course/course_service_locator.dart';
import 'package:quizz_app_canada/features/faq/faq_service_locator.dart';
import 'package:quizz_app_canada/features/question/question_service_locator.dart';
import 'package:quizz_app_canada/features/quiz/quiz_service_locator.dart';
import 'package:quizz_app_canada/features/resource/resource_service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // PocketBase instance
  sl.registerLazySingleton(() => PocketBase(BaseUrl.urlIos));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl.call()));

  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  sl.registerLazySingleton(() => supabase.client);

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => InternetConnection());

  await quizServiceLocator();
  await authServiceLocator();
  await blogServiceLocator();
  await courseServiceLocator();
  await faqServiceLocator();
  await resourceServiceLocator();
  await questionServiceLocator();
}
