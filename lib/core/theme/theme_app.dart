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
  
  // Padding presets
  static const EdgeInsets screenPadding = EdgeInsets.all(md);
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(vertical: sm, horizontal: md);
  static const EdgeInsets listItemPadding = EdgeInsets.symmetric(vertical: sm, horizontal: md);
  
  // Margin presets
  static const EdgeInsets sectionMargin = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets itemMargin = EdgeInsets.only(bottom: md);
  
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

/// App color palette
class AppColors {
  // Brand colors
  static const Color primaryBlue = Color(0xFF4A90E2);  // Royal Blue 
  static const Color secondaryBlue = Color(0xFF3A86FF); // Cornflower Blue
  static const Color accentYellow = Color(0xFFFFAA33); // Amber
  static const Color accentGreen = Color(0xFF66CC33); // Green
  
  // Neutrals - Light mode
  static const Color backgroundLight = Color(0xFFFFFFFF); // White
  static const Color surfaceLight = Color(0xFFF5F7FA); // Light Gray
  static const Color textPrimaryLight = Color(0xFF202124); // Near Black
  static const Color textSecondaryLight = Color(0xFF5F6368); // Dark Gray
  static const Color dividerLight = Color(0xFFDEE2E6); // Light Gray
  
  // Neutrals - Dark mode
  static const Color backgroundDark = Color(0xFF121212); // Dark Gray
  static const Color surfaceDark = Color(0xFF1E1E1E); // Slightly lighter Dark Gray
  static const Color textPrimaryDark = Color(0xFFE8EAED); // Off White
  static const Color textSecondaryDark = Color(0xFFAAADB2); // Light Gray
  static const Color dividerDark = Color(0xFF3C4043); // Gray
  
  // Accent colors - Light mode
  static const Color primaryLight = primaryBlue;
  static const Color primaryLightVariant = Color(0xFF1A3DA6); // Darker blue
  static const Color secondaryLight = accentYellow;
  static const Color errorLight = Color(0xFFB00020); // Red
  
  // Accent colors - Dark mode
  static const Color primaryDark = Color(0xFF5B8AF9); // Lighter blue
  static const Color primaryDarkVariant = Color(0xFF82A4FF); // Even lighter blue
  static const Color secondaryDark = Color(0xFFFFCB75); // Lighter amber
  static const Color errorDark = Color(0xFFCF6679); // Pink
  
  // Category card colors - Light Theme
  static const Map<String, Color> categoryCardColorsLight = {
    'wiring': Color(0xFFE6F0FF),
    'safety': Color(0xFFFFF6E6),
    'circuits': Color(0xFFE6F6FF),
    'tools': Color(0xFFE6F6FF),
    'regulations': Color(0xFFF0F0F0),
    'bestPractices': Color(0xFFF0FFE6),
  };
  
  static const Map<String, Color> categoryIconColorsLight = {
    'wiring': primaryBlue,
    'safety': accentYellow,
    'circuits': secondaryBlue,
    'tools': secondaryBlue,
    'regulations': Color(0xFF555555),
    'bestPractices': accentGreen,
  };
  
  // Category card colors - Dark Theme
  static const Map<String, Color> categoryCardColorsDark = {
    'wiring': Color(0xFF1A2A52),
    'safety': Color(0xFF523D1A),
    'circuits': Color(0xFF1A3652),
    'tools': Color(0xFF1A3652),
    'regulations': Color(0xFF2E2E2E),
    'bestPractices': Color(0xFF1F3F1A),
  };
  
  static const Map<String, Color> categoryIconColorsDark = {
    'wiring': Color(0xFF82A4FF),
    'safety': Color(0xFFFFCB75),
    'circuits': Color(0xFF75C6FF),
    'tools': Color(0xFF75C6FF),
    'regulations': Color(0xFFC0C0C0),
    'bestPractices': Color(0xFF90E070),
  };
}

/// Theme configuration class
class AppTheme {
  /// Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: AppTypography.primaryFontFamily,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLight,
      primaryContainer: AppColors.primaryLightVariant,
      secondary: AppColors.secondaryLight,
      surface: AppColors.surfaceLight,
      background: AppColors.backgroundLight,
      error: AppColors.errorLight,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: AppColors.textPrimaryLight,
      onBackground: AppColors.textPrimaryLight,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    
    // Apply typography to textTheme
    textTheme: TextTheme(
      displayLarge: AppTypography.createHeadingLarge(AppColors.textPrimaryLight),
      displayMedium: AppTypography.createHeadingMedium(AppColors.textPrimaryLight),
      displaySmall: AppTypography.createHeadingSmall(AppColors.textPrimaryLight),
      bodyLarge: AppTypography.createBodyLarge(AppColors.textPrimaryLight),
      bodyMedium: AppTypography.createBodyMedium(AppColors.textSecondaryLight),
      bodySmall: AppTypography.createBodySmall(AppColors.textSecondaryLight),
      labelLarge: AppTypography.createButtonText(AppColors.primaryLight),
      labelMedium: AppTypography.createButtonText(AppColors.textPrimaryLight),
      labelSmall: AppTypography.createCaptionText(AppColors.textSecondaryLight),
    ),
    
    // App bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundLight,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColors.primaryLight),
      titleTextStyle: AppTypography.createHeadingMedium(AppColors.textPrimaryLight),
    ),
    
    // Card theme
    cardTheme: CardTheme(
      color: AppColors.surfaceLight,
      elevation: AppSpacing.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
      ),
    ),
    
    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: AppSpacing.buttonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
        ),
        textStyle: AppTypography.createButtonText(Colors.white),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        side: const BorderSide(color: AppColors.primaryLight),
        padding: AppSpacing.buttonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
        ),
        textStyle: AppTypography.createButtonText(AppColors.primaryLight),
      ),
    ),
    
    // Divider theme
    // dividerTheme: const DividerTheme(
    // //  color: AppColors.dividerLight,
    //   // thickness: 1,
    // ),
  );

  /// Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: AppTypography.primaryFontFamily,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      primaryContainer: AppColors.primaryDarkVariant,
      secondary: AppColors.secondaryDark,
      surface: AppColors.surfaceDark,
      // background: AppColors.backgroundDark,
      error: AppColors.errorDark,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: AppColors.textPrimaryDark,
      // onBackground: AppColors.textPrimaryDark,
      onError: Colors.black,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    
    // Apply typography to textTheme
    textTheme: TextTheme(
      displayLarge: AppTypography.createHeadingLarge(AppColors.textPrimaryDark),
      displayMedium: AppTypography.createHeadingMedium(AppColors.textPrimaryDark),
      displaySmall: AppTypography.createHeadingSmall(AppColors.textPrimaryDark),
      bodyLarge: AppTypography.createBodyLarge(AppColors.textPrimaryDark),
      bodyMedium: AppTypography.createBodyMedium(AppColors.textSecondaryDark),
      bodySmall: AppTypography.createBodySmall(AppColors.textSecondaryDark),
      labelLarge: AppTypography.createButtonText(AppColors.primaryDark),
      labelMedium: AppTypography.createButtonText(AppColors.textPrimaryDark),
      labelSmall: AppTypography.createCaptionText(AppColors.textSecondaryDark),
    ),
    
    // App bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColors.primaryDark),
      titleTextStyle: AppTypography.createHeadingMedium(AppColors.textPrimaryDark),
    ),
    
    // Card theme
    cardTheme: CardTheme(
      color: AppColors.surfaceDark,
      elevation: AppSpacing.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
      ),
    ),
    
    // Button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: Colors.black,
        elevation: 0,
        padding: AppSpacing.buttonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
        ),
        textStyle: AppTypography.createButtonText(Colors.black),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryDark,
        side: const BorderSide(color: AppColors.primaryDark),
        padding: AppSpacing.buttonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
        ),
        textStyle: AppTypography.createButtonText(AppColors.primaryDark),
      ),
    ),
    
    // Divider theme
    // dividerTheme: const DividerTheme(
    //   color: AppColors.dividerDark,
    //   thickness: 1,
    // ),
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
  
  ThemeData get currentTheme => state.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
  
  void toggleTheme() {
    emit(ThemeState(isDarkMode: !state.isDarkMode));
  }
}