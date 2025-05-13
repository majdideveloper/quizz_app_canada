

import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';//! need to fix all app with AppLocalizations

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.xs,
      children: [
        Text(
          //! need to fix all app with AppLocalizations
          // '__Learn & Master',
          AppLocalizations.of(context)!.hello,
          style: textTheme.displayMedium,
        ),
        Text(
          '__Your Path to Expertise',
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}