//! take this class as example
import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';
import 'package:quizz_app_canada/features/auth/presentation/pages/dashboard_user_page.dart';
import 'package:quizz_app_canada/features/auth/presentation/pages/edit_profile_page.dart';
import 'package:quizz_app_canada/features/auth/presentation/pages/login_page.dart';
import 'package:quizz_app_canada/features/auth/presentation/pages/register_page.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/presentation/pages/blog_details_page.dart';
import 'package:quizz_app_canada/features/blog/presentation/pages/blog_list_page.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';
import 'package:quizz_app_canada/features/course/presentation/pages/course_details_page.dart';
import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';
import 'package:quizz_app_canada/features/faq/presentation/pages/all_faq_list_page.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/course_model.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/category_page.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/course_page.dart';
import 'package:quizz_app_canada/pages/home_page/home_page.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;
    final name = settings.name;

    switch (name) {
      case '/':
        return materialPageBuilder(const HomePage());
      case '/quiz':
        if (args is List<QuestionModel>) {
          return materialPageBuilder(QuizPage(questions: args));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/login':
        return materialPageBuilder(const LoginScreen());
      case '/register':
        return materialPageBuilder(const RegisterScreen());
      case '/home':
        return materialPageBuilder(const HomePage());
      case '/dashboard_user':
        if (args is UserEntity) {
          return materialPageBuilder(DashboardUserPage(
            user: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/edit_profile_page':
        if (args is UserEntity) {
          return materialPageBuilder(EditProfilePage(
            user: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/category_page':
        if (args is CategoryModel) {
          //! here need to change to entity not model
          return materialPageBuilder(CategoryPage(
            category: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/course_page':
        if (args is CourseModel) {
          //! here need to change to entity not model
          return materialPageBuilder(CoursePage(
            course: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/blog_details_page':
        if (args is BlogEntity) {
          return materialPageBuilder(BlogDetailsPage(
            blog: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/blog_list_page':
        if (args is List<BlogEntity>) {
          return materialPageBuilder(BlogListPage(
            blogs: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/course_details_page':
        if (args is CourseEntity) {
          return materialPageBuilder(CourseDetailsPage(
            course: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      case '/fags_list_page':
        if (args is List<FaqEntity>) {
          return materialPageBuilder(AllFaqListPage(
            faqs: args,
          ));
        } else {
          return materialPageBuilder(const ErrorPage());
        }
      default:
        return materialPageBuilder(const ErrorPage());
    }
  }

  static dynamic materialPageBuilder(Widget child) {
    return MaterialPageRoute(builder: (context) => child);
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Error"),
      ),
    );
  }
}
