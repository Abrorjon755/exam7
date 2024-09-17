import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static final ThemeData light = ThemeData(
    colorScheme: flexSchemeLight,
    useMaterial3: true,
    extensions: const [
      ColorExtension(
        gradient1: Color(0xff873de1),
        gradient2: Color(0xffe0a9bb),
        gradient3: Color(0xff59ebdb),
        gradient4: Color(0xffc2fa65),
        gradient5: Color(0xfff86da7),
        gradient6: Color(0xfff4d444),
        gradient7: Color(0xffd3a9ed),
        gradient8: Color(0xff6688f0),
      ),
    ],
  );

  static final ThemeData dark = ThemeData(
    colorScheme: flexSchemeDark,
    useMaterial3: true,
    extensions: const [
      ColorExtension(
        gradient1: Color(0xff873de1),
        gradient2: Color(0xffe0a9bb),
        gradient3: Color(0xff59ebdb),
        gradient4: Color(0xffc2fa65),
        gradient5: Color(0xfff86da7),
        gradient6: Color(0xfff4d444),
        gradient7: Color(0xffd3a9ed),
        gradient8: Color(0xff6688f0),
      ),
    ],
  );
}

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.gradient1,
    required this.gradient2,
    required this.gradient3,
    required this.gradient4,
    required this.gradient5,
    required this.gradient6,
    required this.gradient7,
    required this.gradient8,
  });

  final Color gradient1;
  final Color gradient2;
  final Color gradient3;
  final Color gradient4;
  final Color gradient5;
  final Color gradient6;
  final Color gradient7;
  final Color gradient8;

  @override
  ThemeExtension<ColorExtension> copyWith({
    Color? phoneColor,
  }) =>
      ColorExtension(
        gradient1: phoneColor ?? gradient1,
        gradient2: phoneColor ?? gradient2,
        gradient3: phoneColor ?? gradient3,
        gradient4: phoneColor ?? gradient4,
        gradient5: phoneColor ?? gradient5,
        gradient6: phoneColor ?? gradient6,
        gradient7: phoneColor ?? gradient7,
        gradient8: phoneColor ?? gradient8,
      );

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other is! ColorExtension) {
      return this;
    }

    return ColorExtension(
      gradient1: Color.lerp(gradient1, other.gradient1, t)!,
      gradient2: Color.lerp(gradient2, other.gradient2, t)!,
      gradient3: Color.lerp(gradient3, other.gradient3, t)!,
      gradient4: Color.lerp(gradient4, other.gradient4, t)!,
      gradient5: Color.lerp(gradient5, other.gradient5, t)!,
      gradient6: Color.lerp(gradient6, other.gradient6, t)!,
      gradient7: Color.lerp(gradient7, other.gradient7, t)!,
      gradient8: Color.lerp(gradient8, other.gradient8, t)!,
    );
  }
}

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff2B2D33),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffbbede6),
  onPrimaryContainer: Color(0xff101413),
  secondary: Color(0xff2B2D33),
  onSecondary: Color(0xffF4F5F8),
  secondaryContainer: Color(0xffcce8e2),
  onSecondaryContainer: Color(0xff9194A6),
  tertiary: Color(0xff2B2D33),
  onTertiary: Color(0xffCFD1DB),
  tertiaryContainer: Color(0xffcfe5ff),
  onTertiaryContainer: Color(0xff111314),
  error: Color(0xffba1a1a),
  onError: Color(0xff32B153),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff141212),
  surface: Color(0xfff8fafa),
  onSurface: Color(0xff090909),
  onSurfaceVariant: Color(0xff111212),
  outline: Color(0xff7c7c7c),
  outlineVariant: Color(0xffc8c8c8),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff9A72EC),
  onInverseSurface: Color(0xff773DEE),
  inversePrimary: Color(0x1a32b153),
  surfaceTint: Color(0xff32b153),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff53dbca),
  onPrimary: Color(0xff0a1413),
  primaryContainer: Color(0xff005048),
  onPrimaryContainer: Color(0xffdfeceb),
  secondary: Color(0xffaeccce),
  onSecondary: Color(0xff111414),
  secondaryContainer: Color(0xff304b4d),
  onSecondaryContainer: Color(0xffe7ebeb),
  tertiary: Color(0xffc0c3ef),
  onTertiary: Color(0xff131314),
  tertiaryContainer: Color(0xff404468),
  onTertiaryContainer: Color(0xffe9eaf0),
  error: Color(0xffffb4ab),
  onError: Color(0xff141211),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xfff6dfe1),
  surface: Color(0xff141b1a),
  onSurface: Color(0xffeceded),
  onSurfaceVariant: Color(0xffdfe1e1),
  outline: Color(0xff767d7d),
  outlineVariant: Color(0xff2c2e2e),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xfff6fdfc),
  onInverseSurface: Color(0xff131313),
  inversePrimary: Color(0xff326d65),
  surfaceTint: Color(0xff53dbca),
);
