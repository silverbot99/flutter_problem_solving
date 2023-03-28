import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_text_theme.freezed.dart';

typedef MaterialTextTheme = TextTheme;

@freezed
class AppTextTheme with _$AppTextTheme {
  factory AppTextTheme({
    required TextStyle titleSemiBold28,
    required TextStyle titleSemiBold24,
    required TextStyle headlineMedium21,
    required TextStyle headlineSemiBold19,
    required TextStyle headlineRegular19,
    required TextStyle textSemiBold17,
    required TextStyle textRegular17,
    required TextStyle textSemiBold16,
    required TextStyle textMedium16,
    required TextStyle textRegular16,
    required TextStyle textSemiBold15,
    required TextStyle textRegular15,
    required TextStyle textSemiBold14,
    required TextStyle textMedium14,
    required TextStyle textRegular14,
  }) = _AppTextTheme;

  const AppTextTheme._();

  MaterialTextTheme get materialTextTheme => MaterialTextTheme(
    displayLarge: titleSemiBold28,
    displayMedium: titleSemiBold24,
    displaySmall: headlineMedium21,
    headlineLarge: headlineSemiBold19,
    headlineMedium: headlineRegular19,
    headlineSmall: textSemiBold17,
    titleLarge: textRegular17,
    titleMedium: textSemiBold16,
    titleSmall: textMedium16,
    bodyLarge: textRegular16,
    bodyMedium: textSemiBold15,
    bodySmall: textRegular15,
    labelLarge: textSemiBold14,
    labelMedium: textMedium14,
    labelSmall: textRegular14,
  );
}