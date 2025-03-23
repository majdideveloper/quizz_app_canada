import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/core/network/network_info.dart';
import 'package:quizz_app_canada/features/quiz/quiz_service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // PocketBase instance
  sl.registerLazySingleton(() => PocketBase(BaseUrl.urlIos));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl.call()));

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => InternetConnection());

  await quizServiceLocator();
}
