import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../theme/text/app_text_theme.dart';
import '../../theme/text/app_typography.dart';
import '../constants.dart';

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

//812 là size height của design
double getDynamicHeight(BuildContext context, double height) {
  return height / getSize(context).height * 812;
}

//375 là size width của design
double getDynamicWidth(BuildContext context, double width) {
  return width / getSize(context).width * 375;
}

double getStatusBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getSliverBarHeight(BuildContext context) {
  return getStatusBarHeight(context) + kToolbarHeight;
}

double getAppBarHeight() {
  return AppBar().preferredSize.height;
}

double getBottomBarHeight() {
  return kBottomNavigationBarHeight;
}

ColorScheme getTheme(BuildContext context) {
  return Theme.of(context).colorScheme;
}

ColorScheme getPrimaryContainer(BuildContext context) {
  return Theme.of(context).colorScheme;
}

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

TextTheme getTextTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

TextStyle getTextStyle(BuildContext context, CustomTextStyle style) {
  return style.getTextStyle(context);
}


extension ParseToTextTheme on CustomTextStyle {

  TextStyle getTextStyle(BuildContext context) {
    switch (this) {
      case CustomTextStyle.titleSemiBold28:
        return Theme.of(context).textTheme.displayLarge ?? TextStyle();
      case CustomTextStyle.titleSemiBold24:
        return Theme.of(context).textTheme.displayMedium ?? TextStyle();
      case CustomTextStyle.headlineMedium21:
        return Theme.of(context).textTheme.displaySmall ?? TextStyle();
      case CustomTextStyle.headlineSemiBold19:
        return Theme.of(context).textTheme.headlineLarge ?? TextStyle();
      case CustomTextStyle.headlineRegular19:
        return Theme.of(context).textTheme.headlineMedium ?? TextStyle();
      case CustomTextStyle.textSemiBold17:
        return Theme.of(context).textTheme.headlineSmall ?? TextStyle();
      case CustomTextStyle.textRegular17:
        return Theme.of(context).textTheme.titleLarge ?? TextStyle();
      case CustomTextStyle.textSemiBold16:
        return Theme.of(context).textTheme.titleMedium ?? TextStyle();
      case CustomTextStyle.textMedium16:
        return Theme.of(context).textTheme.titleSmall ?? TextStyle();
      case CustomTextStyle.textRegular16:
        return Theme.of(context).textTheme.bodyLarge ?? TextStyle();
      case CustomTextStyle.textSemiBold15:
        return Theme.of(context).textTheme.bodyMedium ?? TextStyle();
      case CustomTextStyle.textRegular15:
        return Theme.of(context).textTheme.bodySmall ?? TextStyle();
      case CustomTextStyle.textSemiBold14:
        return Theme.of(context).textTheme.labelLarge ?? TextStyle();
      case CustomTextStyle.textMedium14:
        return Theme.of(context).textTheme.labelMedium ?? TextStyle();
      case CustomTextStyle.textRegular14:
        return Theme.of(context).textTheme.labelSmall ?? TextStyle();
    }
  }
}

Color getPrimaryColor(BuildContext context) {
  return ElevationOverlay.colorWithOverlay(getTheme(context).surface, getTheme(context).primary, 3);
}

Color getCustomOnPrimaryColor(BuildContext context) {
  return getTheme(context).primary.withOpacity(0.5);
/*   return ElevationOverlay.colorWithOverlay(
    getTheme(context).primary,
    getTheme(context).background,
    isDarkMode(context) ? 1000 : 500,
  ); */
}

String colorToHex(Color c) {
  return "#${(c.value.toRadixString(16))..padLeft(8, '0').toUpperCase()}";
}

Color hexToColor(String h) {
  return Color(int.parse(h, radix: 16));
}

LinearGradient colorsToGradient(List<Color> colors, {double opacity = 1}) {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: colors.map((c) => c.withOpacity(opacity)).toList(),
  );
}
T? cast<T>(x) => x is T ? x : null;

bool boolNotNull(dynamic value){
  var result = cast<bool>(value);
  return result != null ? result : false;
}

extension IntCurrency on int {
  String formatCurrency() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(this);
  }
}
