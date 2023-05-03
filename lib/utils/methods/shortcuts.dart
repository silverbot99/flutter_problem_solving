import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../constants.dart';
import 'package:flutter_problem_solving/features/app/models/user_model.dart';
import 'package:hive/hive.dart';

// Future<UserModel?>? getUserInfo() async {
//   final boxExists = await Hive.boxExists('userInfo');
//   if (!boxExists) return null;
//
//   final userInfoBox = await Hive.openBox('userInfo');
//   final savedEmail = (userInfoBox.get('email') as String?).wrappedValue();
//   final savedPhone = (userInfoBox.get('phone') as String?).wrappedValue();
//   final savedStoreId = (userInfoBox.get('store_id') as String?).wrappedValue();
//   final savedName = (userInfoBox.get('name') as String?).wrappedValue();
//
//   return UserModel(
//     id: savedEmail.wrappedValue(),
//     phone: savedPhone.wrappedValue(),
//     email: savedEmail.wrappedValue(),
//     storeId: savedStoreId.wrappedValue(),
//     name: savedName.wrappedValue(),
//   );
// }

void showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

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
      case CustomTextStyle.heading1Bold40:
        return Theme.of(context).textTheme.displayLarge ?? TextStyle();
      case CustomTextStyle.heading2Bold32:
        return Theme.of(context).textTheme.displayMedium ?? TextStyle();
      case CustomTextStyle.heading3Bold24:
        return Theme.of(context).textTheme.displaySmall ?? TextStyle();
      case CustomTextStyle.heading4Bold20:
        return Theme.of(context).textTheme.headlineLarge ?? TextStyle();
      case CustomTextStyle.heading5Bold16:
        return Theme.of(context).textTheme.headlineMedium ?? TextStyle();
      case CustomTextStyle.heading6Bold14:
        return Theme.of(context).textTheme.headlineSmall ?? TextStyle();
      case CustomTextStyle.title1SemiBold24:
        return Theme.of(context).textTheme.titleLarge ?? TextStyle();
      case CustomTextStyle.title2SemiBold20:
        return Theme.of(context).textTheme.titleMedium ?? TextStyle();
      case CustomTextStyle.subtitle1Medium20:
        return Theme.of(context).textTheme.titleSmall ?? TextStyle();
      case CustomTextStyle.subtitle2Medium16:
        return Theme.of(context).textTheme.bodyLarge ?? TextStyle();
      case CustomTextStyle.body1Regular16:
        return Theme.of(context).textTheme.bodyMedium ?? TextStyle();
      case CustomTextStyle.body2Regular14:
        return Theme.of(context).textTheme.bodySmall ?? TextStyle();
      case CustomTextStyle.text1Italic16:
        return Theme.of(context).textTheme.labelLarge ?? TextStyle();
      case CustomTextStyle.text2ExtraRegular12:
        return Theme.of(context).textTheme.labelMedium ?? TextStyle();
      case CustomTextStyle.text3ExtraRegular12:
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
  final result = cast<bool>(value);
  return result != null ? result : false;
}

extension StringNotNull on String? {
  String wrappedValue() {
    return this ?? '';
  }
  double toDouble() {
    return this == '' || this == null ? 0.0 : double.parse(this ?? '0');
  }
  int toInt() {
    return this == '' || this == null ? 0 : int.parse(this ?? '0');
  }
}
extension DoubleNotNull on double? {
  double wrappedValue() {
    return this ?? 0.0;
  }
}
extension IntNotNull on int? {
  int wrappedValue() {
    return this ?? 0;
  }
}

extension IntCurrency on int {
  String formatCurrency() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return "${oCcy.format(this)} VND";
  }
}
extension DoubleCurrency on double {
  String formatCurrencyNoVND() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return oCcy.format(this);
  }
  String formatCurrency() {
    final oCcy = NumberFormat("#,##0", "en_US");
    return "${oCcy.format(this)} VND";
  }
}

extension DoubleToDateString on double {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch((this * 1000).toInt());
  }
}
extension DateTimeExtension on DateTime {
  String toDDMMYYYYString() {
    return "${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year.toString()}";
  }

  String toDDMMYYYYhhmmString() {
    return "${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year} ${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}";
  }

  String tohhmmString() {
    return "${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}";
  }
}

extension FormGroupExtension on FormGroup {
  double getDoubleValue(String formGroupName) {
    return this.control(formGroupName).value.toString() == '' ? 0.0 : double.parse(this.control(formGroupName).value.toString().replaceAll(',', ''));
  }
  int getIntValue(String formGroupName) {
    return this.control(formGroupName).value.toString() == '' ? 0 : int.parse(this.control(formGroupName).value.toString().replaceAll(',', ''));
  }
}

//Validation pattern
String valiationPhonePattern() => r'(^(?:[+0]9)?[0-9]{10,12}$)';
String valiationEmailPattern() => r'(^(?:[+0]9)?[0-9]{10,12}$)';