import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_page.dart';

// class CategoryPage extends StatelessWidget {
//   final CategoryModel category;

//   const CategoryPage({super.key, required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(category.name)),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Quizzes:',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             category.quizzes.isEmpty
//                 ? const Center(child: Text('No quizzes available'))
//                 : BlocBuilder<QuizCubit, QuizState>(
//                     builder: (context, state) {
//                       return ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: category.quizzes.length,
//                         itemBuilder: (context, index) {
//                           final quiz = category.quizzes[index];

//                           return ListTile(
//                             title: Text(quiz.title),
//                             onTap: () {
//                               if (index == 0) {
//                                 // Allow first quiz for free
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         QuizPage(questions: quiz.questions),
//                                   ),
//                                 );
//                               } else {
//                                 // Show authentication prompt
//                                 //TODO change this to bottom model sheet ...
//                                 showDialog(
//                                   context: context,
//                                   builder: (context) => AlertDialog(
//                                     title:
//                                         const Text("Authentication Required"),
//                                     content: const Text(
//                                         "You need to log in to access this quiz."),
//                                     actions: [
//                                       TextButton(
//                                         onPressed: () => Navigator.pop(context),
//                                         child: const Text("Cancel"),
//                                       ),
//                                       TextButton(
//                                         onPressed: () {
//                                           // Navigate to login page
//                                           Navigator.pop(context);
//                                           Navigator.pushNamed(
//                                               context, "/login");
//                                         },
//                                         child: const Text("Login"),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               }
//                             },
//                           );
//                         },
//                       );
//                     },
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CategoryPage extends StatefulWidget {
  final CategoryModel category;

  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Courses & Quizzes
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildCourses() {
    final courses = widget.category.courses; // Assuming this field exists

    return courses.isEmpty
        ? const Center(child: Text('No courses available'))
        : ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              final course = courses[index];
              return ListTile(
                title: Text(course.title),
                onTap: () {
                  // Navigate to course details or player
                  Navigator.pushNamed(context, '/course_page',
                      arguments: course);
                },
              );
            },
          );
  }

  Widget _buildQuizzes() {
    final quizzes = widget.category.quizzes;

    return quizzes.isEmpty
        ? const Center(child: Text('No quizzes available'))
        : BlocBuilder<QuizCubit, QuizState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: quizzes.length,
                itemBuilder: (context, index) {
                  final quiz = quizzes[index];

                  return ListTile(
                    title: Text(quiz.title),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                QuizPage(questions: quiz.questions),
                          ),
                        );
                      } else {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Authentication Required",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                    "You need to log in to access this quiz."),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("Cancel"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pushNamed(context, "/login");
                                      },
                                      child: const Text("Login"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              );
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Courses'),
            Tab(text: 'Quizzes'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildCourses(),
          _buildQuizzes(),
        ],
      ),
    );
  }
}
