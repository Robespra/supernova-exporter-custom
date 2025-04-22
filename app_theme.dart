import 'package:flutter/material.dart';
import 'colors.dart';

// Theme extension class for semantic colors
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final Color text;
  final Color basicContrastText;
  final Color basicContrastOpposite;
  final Color colorlogoLine;
  final Color background;
  final Color backgroundNav;
  final Color backgroundNavStronger;
  final Color grey;
  final Color greyDarker;
  final Color contrastOpacityS;
  final Color contrastOpacityM;
  final Color backgroundCards;
  final Color sucessPromo;
  final Color warningYellow;
  final Color brandRed;

  const AppThemeColors({
    required this.text,
    required this.basicContrastText,
    required this.basicContrastOpposite,
    required this.colorlogoLine,
    required this.background,
    required this.backgroundNav,
    required this.backgroundNavStronger,
    required this.grey,
    required this.greyDarker,
    required this.contrastOpacityS,
    required this.contrastOpacityM,
    required this.backgroundCards,
    required this.sucessPromo,
    required this.warningYellow,
    required this.brandRed,
  });

  @override
  AppThemeColors copyWith({
    Color? text,
    Color? basicContrastText,
    Color? basicContrastOpposite,
    Color? colorlogoLine,
    Color? background,
    Color? backgroundNav,
    Color? backgroundNavStronger,
    Color? grey,
    Color? greyDarker,
    Color? contrastOpacityS,
    Color? contrastOpacityM,
    Color? backgroundCards,
    Color? sucessPromo,
    Color? warningYellow,
    Color? brandRed,
  }) {
    return AppThemeColors(
      text: text ?? this.text,
      basicContrastText: basicContrastText ?? this.basicContrastText,
      basicContrastOpposite: basicContrastOpposite ?? this.basicContrastOpposite,
      colorlogoLine: colorlogoLine ?? this.colorlogoLine,
      background: background ?? this.background,
      backgroundNav: backgroundNav ?? this.backgroundNav,
      backgroundNavStronger: backgroundNavStronger ?? this.backgroundNavStronger,
      grey: grey ?? this.grey,
      greyDarker: greyDarker ?? this.greyDarker,
      contrastOpacityS: contrastOpacityS ?? this.contrastOpacityS,
      contrastOpacityM: contrastOpacityM ?? this.contrastOpacityM,
      backgroundCards: backgroundCards ?? this.backgroundCards,
      sucessPromo: sucessPromo ?? this.sucessPromo,
      warningYellow: warningYellow ?? this.warningYellow,
      brandRed: brandRed ?? this.brandRed,
    );
  }

  @override
  ThemeExtension<AppThemeColors> lerp(ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      text: Color.lerp(text, other.text, t)!,
      basicContrastText: Color.lerp(basicContrastText, other.basicContrastText, t)!,
      basicContrastOpposite: Color.lerp(basicContrastOpposite, other.basicContrastOpposite, t)!,
      colorlogoLine: Color.lerp(colorlogoLine, other.colorlogoLine, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundNav: Color.lerp(backgroundNav, other.backgroundNav, t)!,
      backgroundNavStronger: Color.lerp(backgroundNavStronger, other.backgroundNavStronger, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      greyDarker: Color.lerp(greyDarker, other.greyDarker, t)!,
      contrastOpacityS: Color.lerp(contrastOpacityS, other.contrastOpacityS, t)!,
      contrastOpacityM: Color.lerp(contrastOpacityM, other.contrastOpacityM, t)!,
      backgroundCards: Color.lerp(backgroundCards, other.backgroundCards, t)!,
      sucessPromo: Color.lerp(sucessPromo, other.sucessPromo, t)!,
      warningYellow: Color.lerp(warningYellow, other.warningYellow, t)!,
      brandRed: Color.lerp(brandRed, other.brandRed, t)!,
    );
  }

  // Light theme values
  static AppThemeColors get light => const AppThemeColors(
    text: AppColors.text,
    basicContrastText: AppColors.basicContrastText,
    basicContrastOpposite: AppColors.basicContrastOpposite,
    colorlogoLine: AppColors.colorlogoLine,
    background: AppColors.background,
    backgroundNav: AppColors.backgroundNav,
    backgroundNavStronger: AppColors.backgroundNavStronger,
    grey: AppColors.grey,
    greyDarker: AppColors.greyDarker,
    contrastOpacityS: AppColors.contrastOpacityS,
    contrastOpacityM: AppColors.contrastOpacityM,
    backgroundCards: AppColors.backgroundCards,
    sucessPromo: AppColors.sucessPromo,
    warningYellow: AppColors.warningYellow,
    brandRed: AppColors.brandRed,
  );

  // Dark theme values
  static AppThemeColors get dark => const AppThemeColors(
    text: Color(0xFFF6F6F6),
    basicContrastText: Color(0xFFFFFFFF),
    basicContrastOpposite: Color(0xFF1D1D1D),
    colorlogoLine: Color(0xFFFFFFFF),
    background: Color(0xFF1C1C1B),
    backgroundNav: Color(0xFF2C2D2D),
    backgroundNavStronger: Color(0xFF474949),
    grey: Color(0xFFA3A3A3),
    greyDarker: Color(0xFF515151),
    contrastOpacityS: Color(0x1AFFFFFF),
    contrastOpacityM: Color(0x40FFFFFF),
    backgroundCards: Color(0xFF2C2D2D),
    sucessPromo: Color(0xFF48BF73),
    warningYellow: Color(0xFFECCB57),
    brandRed: Color(0xFFCB1617),
  );
}

// Theme configuration
class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    extensions: [AppThemeColors.light],
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    extensions: [AppThemeColors.dark],
  );
}

// Extension method for easy access
extension AppThemeExtension on BuildContext {
  AppThemeColors get colors => Theme.of(this).extension<AppThemeColors>()!;
}