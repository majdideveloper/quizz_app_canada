import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/quiz/presentation/widgets/categories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Column(
        children: [
          WelcomeWidget(),
          Expanded(child: CategoriesList()),
        ],
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(Object context) {
    return Text('Welcome to our APP');
  }
}
