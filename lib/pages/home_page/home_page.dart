import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/features/blog/presentation/widgets/blog_list_widget.dart';
import 'package:quizz_app_canada/features/faq/presentation/cubit/faq_cubit.dart';
import 'package:quizz_app_canada/features/faq/presentation/widgets/faq_list.dart';
import 'package:quizz_app_canada/features/quiz/presentation/widgets/widget.dart';
import 'package:quizz_app_canada/pages/home_page/widgets/free_simple_quiz_widget.dart';
import 'package:quizz_app_canada/pages/home_page/widgets/header_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacing.itemMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSpacing.xl,
            children: [
              Padding(
                padding: AppSpacing.screenPadding.copyWith(
                  top: AppSpacing.xxl,
                  bottom: AppSpacing.unit,
                ),
                child: Column(
                  spacing: AppSpacing.xl,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LanguageToggleButton(),
                        // ThemeToggleButton(),//! if the product work add the switch mode...
                      ],
                    ),
                    HeaderHome(),
                    FreeSampleQuizWidget(),
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
              ),
              SignInSection(),
            ],
          ),
        ),
      ),
    );
  }
}

//! rebuild this widget to taake the data from the cubit
// class CategoryGrid extends StatelessWidget {
//   const CategoryGrid({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
//       final textTheme = Theme.of(context).textTheme;
//       final isDarkMode = state.isDarkMode;
//       // final categoryColors =
//       // isDarkMode
//       //     ? AppColors.categoryCardColorsDark
//       //     : AppColors.categoryCardColorsLight;
//       // final iconColors = isDarkMode
//       //     ? AppColors.categoryIconColorsDark
//       //     : AppColors.categoryIconColorsLight;

//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             '__Quiz Categories',
//             style: Theme.of(context).textTheme.displaySmall,
//           ),
//           const SizedBox(height: AppSpacing.md),
//           GridView.count(
//             crossAxisCount: 2,
//             mainAxisSpacing: AppSpacing.md,
//             crossAxisSpacing: AppSpacing.md,
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             children: [
//               CategoryCard(
//                 title: 'Wiring',
//                 quizCount: 12,
//                 icon: Icons.flash_on,
//                 bgColor: categoryColors['wiring']!,
//                 iconColor: iconColors['wiring']!,
//               ),
//               CategoryCard(
//                 title: 'Safety',
//                 quizCount: 8,
//                 icon: Icons.shield,
//                 bgColor: categoryColors['safety']!,
//                 iconColor: iconColors['safety']!,
//               ),
//               CategoryCard(
//                 title: 'Circuits',
//                 quizCount: 10,
//                 icon: Icons.settings,
//                 bgColor: categoryColors['circuits']!,
//                 iconColor: iconColors['circuits']!,
//               ),
//               CategoryCard(
//                 title: 'Tools',
//                 quizCount: 10,
//                 icon: Icons.build,
//                 bgColor: categoryColors['tools']!,
//                 iconColor: iconColors['tools']!,
//               ),
//               CategoryCard(
//                 title: 'Regulations',
//                 quizCount: 14,
//                 icon: Icons.description,
//                 bgColor: categoryColors['regulations']!,
//                 iconColor: iconColors['regulations']!,
//               ),
//               CategoryCard(
//                 title: 'Best Practices',
//                 quizCount: 9,
//                 icon: Icons.check_circle,
//                 bgColor: categoryColors['bestPractices']!,
//                 iconColor: iconColors['bestPractices']!,
//               ),
//             ],
//           ),
//         ],
//       );
//     });
//   }
// }

class CategoryCard extends StatelessWidget {
  final String title;
  final int quizCount;
  final IconData icon;
  final Color bgColor;
  final Color iconColor;

  const CategoryCard({
    super.key,
    required this.title,
    required this.quizCount,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
      ),
      padding: AppSpacing.cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 32,
          ),
          const Spacer(),
          Text(
            title,
            style: textTheme.bodyLarge,
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '$quizCount __Quizzes',
            style: textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
