import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';
import 'package:quizz_app_canada/features/blog/presentation/widgets/blog_list_widget.dart';
import 'package:quizz_app_canada/features/category/presentation/widgets/category_list_widget.dart';
import 'package:quizz_app_canada/features/faq/presentation/cubit/faq_cubit.dart';
import 'package:quizz_app_canada/features/faq/presentation/widgets/faq_list.dart';
import 'package:quizz_app_canada/features/quiz/presentation/widgets/language_toggle_button.dart';
import 'package:quizz_app_canada/pages/home_page/widgets/free_simple_quiz_widget.dart';
import 'package:quizz_app_canada/pages/home_page/widgets/header_home.dart';

class HomeDashboardPage extends StatelessWidget {
  final UserEntity user;
  const HomeDashboardPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppSpacing.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100), //! need to fix this for all dimensions
              Text('__Welcome ${user.name}'),
              Text(
                '__This is our categories of Courses and Quizzes',
                style: textTheme.displaySmall,
              ),
              Column(
                spacing: AppSpacing.xl,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LanguageToggleButton(),
                      // ThemeToggleButton(),//! if the product work add the switch mode...
                    ],
                  ),
          
                  BlogListWidget(),
                  // make this inside the widget of FAQ
                  BlocBuilder<FaqCubit, FaqState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () => const CircularProgressIndicator(),
                        loaded: (faqs) => FaqList(
                          faqs: faqs,
                          isPage: false,
                        ),
                        success: (_) => const SizedBox.shrink(),
                        failure: (msg) => Text('Error: $msg'),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
