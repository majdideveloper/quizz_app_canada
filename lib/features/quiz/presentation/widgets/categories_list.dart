import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/option_response_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/category/category_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_page.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text("Start Fetching")),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (categories) => GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      2, // Adjust this to the number of columns you want
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryItem(
                    category: category,
                  );
                },
              ),
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the category page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(category: category),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

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
            // Check if quizzes are available
            category.quizzes.isEmpty
                ? const Center(child: Text('No quizzes available'))
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: category.quizzes.length,
                    itemBuilder: (context, index) {
                      final quiz = category.quizzes[index];
                      return ListTile(
                        title: Text(quiz
                            .title), // Assuming `quiz` has a `name` property
                        onTap: () {
                          // Navigate to the category page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  QuizPage(questions: quiz.questions),
                            ),
                          );
                          // Handle quiz tap
                          // Navigate to quiz details page or start quiz
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


