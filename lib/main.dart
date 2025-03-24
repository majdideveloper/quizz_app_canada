import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/category/category_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/home_page.dart';
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
        BlocProvider<CategoryCubit>(
          create: (context) => di.sl<CategoryCubit>()..fetchCategories(),
        ),
        BlocProvider<QuizCubit>(
          create: (context) => di.sl<QuizCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const HomePage(),
      ),
    );
  }
}
