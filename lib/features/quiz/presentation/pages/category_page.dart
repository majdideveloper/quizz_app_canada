import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_page.dart';

class CategoryPage extends StatelessWidget {
  final CategoryModel category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quizzes:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            category.quizzes.isEmpty
                ? const Center(child: Text('No quizzes available'))
                : BlocBuilder<QuizCubit, QuizState>(
                    builder: (context, state) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: category.quizzes.length,
                        itemBuilder: (context, index) {
                          final quiz = category.quizzes[index];

                          return ListTile(
                            title: Text(quiz.title),
                            onTap: () {
                              if (index == 0) {
                                // Allow first quiz for free
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        QuizPage(questions: quiz.questions),
                                  ),
                                );
                              } 
                              // else if (state.hasTestedQuiz) {
                              //   // Allow other quizzes only if user has completed free quiz
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) =>
                              //           QuizPage(questions: quiz.questions),
                              //     ),
                              //   );
                              // }
                               else {
                                // Show authentication prompt
                                //TODO change this to bottom model sheet ...
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Authentication Required"),
                                    content: const Text(
                                        "You need to log in to access this quiz."),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context),
                                        child: const Text("Cancel"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Navigate to login page
                                          Navigator.pop(context);
                                          Navigator.pushNamed(context, "/login");
                                        },
                                        child: const Text("Login"),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}