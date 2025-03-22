import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/quiz/presentation/widgets/categories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: CategoriesList(),
    );
  }
}
