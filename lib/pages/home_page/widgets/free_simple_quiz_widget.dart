import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/primary_button.dart';
import 'package:quizz_app_canada/core/widgets/secondry_button.dart';

class FreeSampleQuizWidget extends StatelessWidget {
  const FreeSampleQuizWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            '__Free Sample Quiz',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),
          // ! i need to rcreate end point with random question
          // Question
          Text(
            'Which of the following is NOT a type of electrical conductor?',
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
          ),

          const SizedBox(height: 16),

          // Options
          ...['A. Copper', 'B. Aluminum', 'C. Plastic', 'D. Silver'].map(
            (option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: OutlinedButton(
                onPressed: () {
                  //! navigate to quiz page
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: AppSpacing.sectionMargin,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      option,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          PrimaryButton(
            text: '__Take Quiz',
            onPressed: () {},
          ),

          const SizedBox(height: 12),

          // Sign up section
          Center(
            child: Column(
              children: [
                Text(
                  '__Want more quizzes? Sign up to unlock your next test!',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    spacing: AppSpacing.sm,
                    children: [
                      Expanded(
                          child: PrimaryButton(
                        text: '__Create Account',
                        onPressed: () =>
                            Navigator.pushNamed(context, '/register'),
                      )),
                      Expanded(
                          child: SecondryButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/login'),
                              text: '__Sign in',
                              color: theme.primaryColor)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
