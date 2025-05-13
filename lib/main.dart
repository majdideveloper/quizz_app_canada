import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quizz_app_canada/core/locale_cubit/locale_cubit.dart';
import 'package:quizz_app_canada/core/routes/on_generate_routes.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:quizz_app_canada/features/blog/presentation/cubit/blog_cubit.dart';
import 'package:quizz_app_canada/features/category/presentation/cubit/category/category_cubit.dart';
import 'package:quizz_app_canada/features/course/presentation/cubit/cubit/course/course_cubit.dart';
import 'package:quizz_app_canada/features/faq/presentation/cubit/faq_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/resource/presentation/cubit/resource_cubit.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //TODO change the logic to take just authfecated
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
        BlocProvider<CategoryCubit>(
          create: (context) => di.sl<CategoryCubit>()
            ..fetchCategories(), //! need to change the logic when open the page
        ),
        BlocProvider<QuizCubit>(
          create: (context) => di.sl<QuizCubit>(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => di.sl<AuthCubit>(),
        ),
        BlocProvider<BlogCubit>(
          create: (context) => di.sl<BlogCubit>()
            ..getAllBlogs(), //! need to change the logic when open the page
        ),
        BlocProvider<CourseCubit>(
          create: (_) =>
              di.sl<CourseCubit>()..getAllCourses(), // Inject and call
        ),
        BlocProvider<FaqCubit>(
          create: (_) => di.sl<FaqCubit>()..loadFaqs(), // Inject and call
        ),
        BlocProvider<ResourceCubit>(
          create: (_) =>
              di.sl<ResourceCubit>()..loadResources(), // Inject and call
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: ThemeApp.lightTheme,
                //  state.isDarkMode ? AppTheme.lightTheme : AppTheme.darkTheme,
                localizationsDelegates: const [
                  AppLocalizations.delegate, // Add this line
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                locale: locale,
                initialRoute: '/',
                onGenerateRoute: OnGenerateRoute.route,
              );
            },
          );
        },
      ),
    );
  }
}
