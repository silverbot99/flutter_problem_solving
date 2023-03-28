import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/theme/text/app_text_theme.dart';
import 'package:flutter_problem_solving/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../font/fontweight_manager.dart';

part 'app_typography.freezed.dart';

@freezed
class AppTypography with _$AppTypography {
  factory AppTypography({
    required AppTextTheme black,
    required AppTextTheme white,
  }) = _AppTypography;

  const AppTypography._();

  factory AppTypography.create({required String fontFamily}) => AppTypography(
    black: _createTextTheme(fontFamily, $constants.palette.black),
    white: _createTextTheme(fontFamily, $constants.palette.white),
  );

  Typography get materialTypography => Typography.material2021(
    platform: null,
    black: black.materialTextTheme,
    white: white.materialTextTheme,
  );

  static AppTextTheme _createTextTheme(String fontFamily, Color color) => AppTextTheme(
    titleSemiBold28: TextStyle(
      debugLabel: 'appTextTheme titleSemiBold28',
      color: color,
      fontSize: 28,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.5,
    ),
    titleSemiBold24: TextStyle(
      debugLabel: 'appTextTheme titleSemiBold24',
      color: color,
      fontSize: 24,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: -1.5,
    ),
    headlineMedium21: TextStyle(
      debugLabel: 'appTextTheme headlineMedium21',
      color: color,
      fontSize: 24,
      fontWeight: FontWeightManager.medium,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: -1.5,
    ),
    headlineSemiBold19: TextStyle(
      debugLabel: 'appTextTheme headlineSemiBold19',
      color: color,
      fontSize: 19,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: -0.5,
    ),
    headlineRegular19: TextStyle(
      debugLabel: 'appTextTheme headlineRegular19',
      color: color,
      fontSize: 19,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0,
    ),
    textSemiBold17: TextStyle(
      debugLabel: 'appTextTheme textSemiBold17',
      color: color,
      fontSize: 17,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.25,
    ),
    textRegular17: TextStyle(
      debugLabel: 'appTextTheme textRegular17',
      color: color,
      fontSize: 17,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0,
    ),
    textSemiBold16: TextStyle(
      debugLabel: 'appTextTheme textSemiBold16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.15,
    ),
    textMedium16: TextStyle(
      debugLabel: 'appTextTheme textMedium16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.medium,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.5,
    ),
    textRegular16: TextStyle(
      debugLabel: 'appTextTheme textRegular16',
      color: color,
      fontSize: 16,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.25,
    ),
    textSemiBold15: TextStyle(
      debugLabel: 'appTextTheme textSemiBold15',
      color: color,
      fontSize: 15,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.15,
    ),
    textRegular15: TextStyle(
      debugLabel: 'appTextTheme textRegular15',
      color: color,
      fontSize: 15,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.1,
    ),
    textSemiBold14: TextStyle(
      debugLabel: 'appTextTheme textSemiBold14',
      color: color,
      fontSize: 14,
      fontWeight: FontWeightManager.bold,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 1.25,
    ),
    textMedium14: TextStyle(
      debugLabel: 'appTextTheme textMedium14',
      color: color,
      fontSize: 14,
      fontWeight: FontWeightManager.medium,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.4,
    ),
    textRegular14: TextStyle(
      debugLabel: 'appTextTheme textRegular14',
      color: color,
      fontSize: 14,
      fontWeight: FontWeightManager.regular,
      fontFamily: fontFamily,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.15,
    ),
  );
}
