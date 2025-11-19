import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00677c),
      surfaceTint: Color(0xff00677c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8ce4ff),
      onPrimaryContainer: Color(0xff00677b),
      secondary: Color(0xff6a5f0f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffeee91),
      onSecondaryContainer: Color(0xff776b1c),
      tertiary: Color(0xff8b5000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffa239),
      onTertiaryContainer: Color(0xff6c3d00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff7fafc),
      onSurface: Color(0xff181c1e),
      onSurfaceVariant: Color(0xff3e484c),
      outline: Color(0xff6e797d),
      outlineVariant: Color(0xffbec8cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inversePrimary: Color(0xff7ad3ed),
      primaryFixed: Color(0xffb1ecff),
      onPrimaryFixed: Color(0xff001f27),
      primaryFixedDim: Color(0xff7ad3ed),
      onPrimaryFixedVariant: Color(0xff004e5e),
      secondaryFixed: Color(0xfff3e488),
      onSecondaryFixed: Color(0xff201c00),
      secondaryFixedDim: Color(0xffd6c86f),
      onSecondaryFixedVariant: Color(0xff504700),
      tertiaryFixed: Color(0xffffdcbe),
      onTertiaryFixed: Color(0xff2d1600),
      tertiaryFixedDim: Color(0xffffb871),
      onTertiaryFixedVariant: Color(0xff6a3c00),
      surfaceDim: Color(0xffd7dadc),
      surfaceBright: Color(0xfff7fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f6),
      surfaceContainer: Color(0xffebeef0),
      surfaceContainerHigh: Color(0xffe5e9ea),
      surfaceContainerHighest: Color(0xffe0e3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003c49),
      surfaceTint: Color(0xff00677c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00778f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3e3600),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff796e1f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff522d00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa05d00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fafc),
      onSurface: Color(0xff0e1213),
      onSurfaceVariant: Color(0xff2e383b),
      outline: Color(0xff4a5458),
      outlineVariant: Color(0xff646f73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inversePrimary: Color(0xff7ad3ed),
      primaryFixed: Color(0xff00778f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff005d70),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff796e1f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff605504),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa05d00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7e4800),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc3c7c9),
      surfaceBright: Color(0xfff7fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f6),
      surfaceContainer: Color(0xffe5e9ea),
      surfaceContainerHigh: Color(0xffdadddf),
      surfaceContainerHighest: Color(0xffcfd2d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00313c),
      surfaceTint: Color(0xff00677c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff005061),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff332c00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff534900),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff442400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6d3e00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fafc),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff242e31),
      outlineVariant: Color(0xff414b4e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inversePrimary: Color(0xff7ad3ed),
      primaryFixed: Color(0xff005061),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003844),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff534900),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3a3300),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d3e00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4d2a00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6b9bb),
      surfaceBright: Color(0xfff7fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef1f3),
      surfaceContainer: Color(0xffe0e3e5),
      surfaceContainerHigh: Color(0xffd1d5d7),
      surfaceContainerHighest: Color(0xffc3c7c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe3f7ff),
      surfaceTint: Color(0xff7ad3ed),
      onPrimary: Color(0xff003642),
      primaryContainer: Color(0xff8ce4ff),
      onPrimaryContainer: Color(0xff00677b),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff373100),
      secondaryContainer: Color(0xfff3e488),
      onSecondaryContainer: Color(0xff706516),
      tertiary: Color(0xffffc895),
      onTertiary: Color(0xff4a2800),
      tertiaryContainer: Color(0xffffa239),
      onTertiaryContainer: Color(0xff6c3d00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101416),
      onSurface: Color(0xffe0e3e5),
      onSurfaceVariant: Color(0xffbec8cc),
      outline: Color(0xff889296),
      outlineVariant: Color(0xff3e484c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e5),
      inversePrimary: Color(0xff00677c),
      primaryFixed: Color(0xffb1ecff),
      onPrimaryFixed: Color(0xff001f27),
      primaryFixedDim: Color(0xff7ad3ed),
      onPrimaryFixedVariant: Color(0xff004e5e),
      secondaryFixed: Color(0xfff3e488),
      onSecondaryFixed: Color(0xff201c00),
      secondaryFixedDim: Color(0xffd6c86f),
      onSecondaryFixedVariant: Color(0xff504700),
      tertiaryFixed: Color(0xffffdcbe),
      onTertiaryFixed: Color(0xff2d1600),
      tertiaryFixedDim: Color(0xffffb871),
      onTertiaryFixedVariant: Color(0xff6a3c00),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff363a3c),
      surfaceContainerLowest: Color(0xff0b0f10),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2c),
      surfaceContainerHighest: Color(0xff313537),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe3f7ff),
      surfaceTint: Color(0xff7ad3ed),
      onPrimary: Color(0xff003642),
      primaryContainer: Color(0xff8ce4ff),
      onPrimaryContainer: Color(0xff004857),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff373100),
      secondaryContainer: Color(0xfff3e488),
      onSecondaryContainer: Color(0xff524800),
      tertiary: Color(0xffffd5af),
      onTertiary: Color(0xff3b1f00),
      tertiaryContainer: Color(0xffffa239),
      onTertiaryContainer: Color(0xff422300),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4dee2),
      outline: Color(0xffa9b4b8),
      outlineVariant: Color(0xff889296),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e5),
      inversePrimary: Color(0xff004f60),
      primaryFixed: Color(0xffb1ecff),
      onPrimaryFixed: Color(0xff00141a),
      primaryFixedDim: Color(0xff7ad3ed),
      onPrimaryFixedVariant: Color(0xff003c49),
      secondaryFixed: Color(0xfff3e488),
      onSecondaryFixed: Color(0xff151100),
      secondaryFixedDim: Color(0xffd6c86f),
      onSecondaryFixedVariant: Color(0xff3e3600),
      tertiaryFixed: Color(0xffffdcbe),
      onTertiaryFixed: Color(0xff1e0d00),
      tertiaryFixedDim: Color(0xffffb871),
      onTertiaryFixedVariant: Color(0xff522d00),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff414547),
      surfaceContainerLowest: Color(0xff050809),
      surfaceContainerLow: Color(0xff1a1e20),
      surfaceContainer: Color(0xff24292a),
      surfaceContainerHigh: Color(0xff2f3335),
      surfaceContainerHighest: Color(0xff3a3e40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe3f7ff),
      surfaceTint: Color(0xff7ad3ed),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff8ce4ff),
      onPrimaryContainer: Color(0xff00262f),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfff3e488),
      onSecondaryContainer: Color(0xff302a00),
      tertiary: Color(0xffffeddf),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb265),
      onTertiaryContainer: Color(0xff160800),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff101416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe7f2f6),
      outlineVariant: Color(0xffbac4c9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e5),
      inversePrimary: Color(0xff004f60),
      primaryFixed: Color(0xffb1ecff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff7ad3ed),
      onPrimaryFixedVariant: Color(0xff00141a),
      secondaryFixed: Color(0xfff3e488),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd6c86f),
      onSecondaryFixedVariant: Color(0xff151100),
      tertiaryFixed: Color(0xffffdcbe),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb871),
      onTertiaryFixedVariant: Color(0xff1e0d00),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff4c5152),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c2022),
      surfaceContainer: Color(0xff2d3133),
      surfaceContainerHigh: Color(0xff383c3e),
      surfaceContainerHighest: Color(0xff434749),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
