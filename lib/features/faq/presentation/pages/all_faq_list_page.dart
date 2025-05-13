import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/back_circle_button.dart';
import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';
import 'package:quizz_app_canada/features/faq/presentation/widgets/faq_list.dart';

class AllFaqListPage extends StatelessWidget {
  final List<FaqEntity> faqs;
  const AllFaqListPage({super.key, required this.faqs});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: AppSpacing.screenPadding.copyWith(top: AppSpacing.xxl),
        child: Column(
          spacing: AppSpacing.md,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CircleAvatar(
            //   backgroundColor: theme.colorScheme.surface,
            //   radius: AppSpacing.lg,
            //   child: Center(
            //     child: IconButton(
            //         onPressed: () {
            //           Navigator.pop(context);
            //         },
            //         icon: Icon(
            //           Icons.arrow_back_ios,
            //           color: theme.colorScheme.secondary,
            //         )),
            //   ),
            // ),
            BackCircleButton(),
            FaqList(
              faqs: faqs,
              isPage: true,
            ),
          ],
        ),
      ),
    );
  }
}
