import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// App-wide constants for consistent spacing
class AppSpacing {
  // Base spacing unit (4dp)
  static const double unit = 4.0;

  // Common spacing values
  static const double xs = unit; // 4dp
  static const double sm = unit * 2; // 8dp
  static const double md = unit * 4; // 16dp
  static const double lg = unit * 6; // 24dp
  static const double xl = unit * 8; // 32dp
  static const double xxl = unit * 16; // 64dp
  static const double xxxl = unit * 32; // 128dp
  static const double fourXl = unit * 64; // 128dp
   static const double fiveXl = unit * 128; // 128dp

  // Padding presets
  static const EdgeInsets screenPadding = EdgeInsets.all(md);
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets buttonPadding =
      EdgeInsets.symmetric(vertical: sm, horizontal: md);
  static const EdgeInsets listItemPadding =
      EdgeInsets.symmetric(vertical: sm, horizontal: md);

  // Margin presets
  static const EdgeInsets sectionMargin = EdgeInsets.symmetric(vertical: sm,horizontal: sm);
  static const EdgeInsets itemMargin = EdgeInsets.only(bottom: sm);

  // Border radius
  static const double borderRadiusSm = 8.0;
  static const double borderRadiusMd = 12.0;
  static const double borderRadiusLg = 16.0;
  static const double borderRadiusXl = 24.0;

  // Card elevation
  static const double cardElevation = 1.0;
}

/// Font and text style definitions
class AppTypography {
  // Font families
  static const String primaryFontFamily = 'SF Pro Display';
  static const String secondaryFontFamily = 'SF Pro Text';

  // Font sizes
  static const double fontSizeXs = 12.0;
  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLg = 18.0;
  static const double fontSizeXl = 20.0;
  static const double fontSizeXxl = 24.0;
  static const double fontSizeHuge = 32.0;

  // Font weights
  static const FontWeight weightLight = FontWeight.w300;
  static const FontWeight weightRegular = FontWeight.w400;
  static const FontWeight weightMedium = FontWeight.w500;
  static const FontWeight weightSemiBold = FontWeight.w600;
  static const FontWeight weightBold = FontWeight.w700;

  // Create text styles with color parameter to support both themes
  static TextStyle createHeadingLarge(Color color) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSizeXxl,
        fontWeight: weightBold,
        color: color,
      );

  static TextStyle createHeadingMedium(Color color) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSizeXl,
        fontWeight: weightBold,
        color: color,
      );

  static TextStyle createHeadingSmall(Color color) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSizeLg,
        fontWeight: weightSemiBold,
        color: color,
      );

  static TextStyle createBodyLarge(Color color) => TextStyle(
        fontFamily: secondaryFontFamily,
        fontSize: fontSizeMd,
        fontWeight: weightRegular,
        color: color,
      );

  static TextStyle createBodyMedium(Color color) => TextStyle(
        fontFamily: secondaryFontFamily,
        fontSize: fontSizeSm,
        fontWeight: weightRegular,
        color: color,
      );

  static TextStyle createBodySmall(Color color) => TextStyle(
        fontFamily: secondaryFontFamily,
        fontSize: fontSizeXs,
        fontWeight: weightRegular,
        color: color,
      );

  static TextStyle createButtonText(Color color) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSizeMd,
        fontWeight: weightSemiBold,
        color: color,
      );

  static TextStyle createCaptionText(Color color) => TextStyle(
        fontFamily: secondaryFontFamily,
        fontSize: fontSizeXs,
        fontWeight: weightMedium,
        color: color,
      );
}

// Theme state
class ThemeState extends Equatable {
  final bool isDarkMode;

  const ThemeState({required this.isDarkMode});

  @override
  List<Object> get props => [isDarkMode];
}

// Theme cubit
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(isDarkMode: false));

  ThemeData get currentTheme =>
      state.isDarkMode ? ThemeApp.darkTheme : ThemeApp.lightTheme;

  void toggleTheme() {
    emit(ThemeState(isDarkMode: !state.isDarkMode));
  }
}

//! new theme

class ThemeApp {
  static const String primaryFontFamily = 'SF Pro Display';
  static const String secondaryFontFamily = 'SF Pro Text';

  // Colors
  static const Color primaryColor = Color(0xFF003366);
  static const Color primaryContainerColor = Color(0xFF1A3DA6);
  static const Color secondaryColor = Color(0xFFFF6F00);
  static const Color surfaceColor = Color(0xFFF5F7FA);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color onPrimaryColor = Colors.white;
  static const Color onSecondaryColor = Colors.black;
  static const Color onSurfaceColor = Color(0xFF202124);
  static const Color onBackgroundColor = Color(0xFF202124);
  static const Color onErrorColor = Colors.white;
  static const Color errorColor = Color(0xFFB00020);
  static const Color greyColor = Color(0xFF5F6368);

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: primaryFontFamily,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        primaryContainer: primaryContainerColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        background: backgroundColor,
        error: errorColor,
        onPrimary: onPrimaryColor,
        onSecondary: onSecondaryColor,
        onSurface: onSurfaceColor,
        onBackground: onBackgroundColor,
        onError: onErrorColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      textTheme: TextTheme(
        displayLarge: headingStyle(24, FontWeight.w700, onSurfaceColor),
        displayMedium: headingStyle(20, FontWeight.w700, onSurfaceColor),
        displaySmall: headingStyle(18, FontWeight.w600, onSurfaceColor),
        bodyLarge: bodyStyle(16, FontWeight.w400, onSurfaceColor),
        bodyMedium: bodyStyle(14, FontWeight.w400, greyColor),
        bodySmall: bodyStyle(12, FontWeight.w400, greyColor),
        labelLarge: bodyStyle(16, FontWeight.w600, primaryColor),
        labelMedium: bodyStyle(16, FontWeight.w600, onSurfaceColor),
        labelSmall: bodyStyle(12, FontWeight.w500, greyColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: primaryColor),
        titleTextStyle: headingStyle(20, FontWeight.w700, onSurfaceColor),
      ),
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }

  static TextStyle headingStyle(double size, FontWeight weight, Color color) {
    return TextStyle(
      fontFamily: primaryFontFamily,
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }

  static TextStyle bodyStyle(double size, FontWeight weight, Color color) {
    return TextStyle(
      fontFamily: secondaryFontFamily,
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: primaryFontFamily,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        primaryContainer: primaryContainerColor,
        secondary: secondaryColor,
        surface: Color(0xFF121212),
        background: Color(0xFF1E1E1E),
        error: errorColor,
        onPrimary: onPrimaryColor,
        onSecondary: onSecondaryColor,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: onErrorColor,
      ),
      scaffoldBackgroundColor: const Color(0xFF1E1E1E),
      textTheme: TextTheme(
        displayLarge: headingStyle(24, FontWeight.w700, Colors.white),
        displayMedium: headingStyle(20, FontWeight.w700, Colors.white),
        displaySmall: headingStyle(18, FontWeight.w600, Colors.white),
        bodyLarge: bodyStyle(16, FontWeight.w400, Colors.white),
        bodyMedium: bodyStyle(14, FontWeight.w400, greyColor),
        bodySmall: bodyStyle(12, FontWeight.w400, greyColor),
        labelLarge: bodyStyle(16, FontWeight.w600, primaryColor),
        labelMedium: bodyStyle(16, FontWeight.w600, Colors.white),
        labelSmall: bodyStyle(12, FontWeight.w500, greyColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: primaryColor),
        titleTextStyle: headingStyle(20, FontWeight.w700, Colors.white),
      ),
      cardTheme: CardTheme(
        color: const Color(0xFF2A2A2A),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
