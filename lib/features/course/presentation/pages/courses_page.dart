import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/core/widgets/dashboard_header.dart';
import 'package:quizz_app_canada/features/course/presentation/cubit/cubit/course/course_cubit.dart';
import 'package:quizz_app_canada/features/course/presentation/widgets/course_item.dart';

// class CoursesPage extends StatelessWidget {
//   const CoursesPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return BlocProvider.value(
//       value: BlocProvider.of<CourseCubit>(context)..getAllCourses(),
//       // create: (context) => SubjectBloc(),
//       child: Scaffold(
//         body: BlocBuilder<CourseCubit, CourseState>(
//           builder: (context, state) {
//             return state.when(
//               initial: () => const SizedBox(),
//               loading: () => const Center(child: CircularProgressIndicator()),
//               loaded: (courses) => SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     DashboardHeader(
//                       title: 'Resources',
//                       subtitle: 'Access study materials and resources',
//                     ),
//                     Divider(
//                       height: 1,
//                       color: theme.colorScheme.primary.withOpacity(0.2),
//                     ),
//                     ListView.builder(
//                       itemCount: courses.length,
//                       itemBuilder: (context, index) {
//                         final course = courses[index];

//                         return CourseItem(
//                           imageUrl: course.thumbnailUrl ?? '',
//                           title: course.title ?? '',
//                           level: course.level ?? '',
//                           levelColor: _getLevelColor(course.level ?? ''),
//                           description: course.description ?? '',
//                           onTap: () {
//                             Navigator.pushNamed(
//                               context,
//                               '/course_details_page',
//                               arguments: course,
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               // singleLoaded: (_) => const SizedBox(),
//               success: (_) => const SizedBox(),
//               failure: (message) => Center(child: Text(message)),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Color _getLevelColor(String level) {
//     switch (level.toLowerCase()) {
//       case 'beginner':
//         return Colors.blue;
//       case 'intermediate':
//         return Colors.green;
//       case 'advanced':
//         return Colors.orange;
//       default:
//         return Colors.grey;
//     }
//   }
// }


class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider.value(
      value: BlocProvider.of<CourseCubit>(context)..getAllCourses(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<CourseCubit, CourseState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (courses) => SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashboardHeader(
                        title: 'Courses',
                        subtitle: 'Continue your learning journey',
                      ),
                      Divider(
                        height: 1,
                        color: theme.colorScheme.primary.withOpacity(0.2),
                      ),
                      ListView.builder(
                        itemCount: courses.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final course = courses[index];

                          return CourseItem(
                            imageUrl: course.thumbnailUrl ?? '',
                            title: course.title ?? '',
                            level: course.level ?? '',
                            levelColor: _getLevelColor(course.level ?? ''),
                            description: course.description ?? '',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/course_details_page',
                                arguments: course,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                success: (_) => const SizedBox(),
                failure: (message) => Center(child: Text(message)),
              );
            },
          ),
        ),
      ),
    );
  }

  Color _getLevelColor(String level) {
    switch (level.toLowerCase()) {
      case 'beginner':
        return Colors.blue;
      case 'intermediate':
        return Colors.green;
      case 'advanced':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
