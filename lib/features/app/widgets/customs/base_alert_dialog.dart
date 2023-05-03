import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/utils/constants.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';

class BaseAlertDialog extends StatelessWidget {
  const BaseAlertDialog({
    super.key,
    required this.content,
    this.title = "Thông báo",
    this.cancel = "Huỷ",
    this.yes = "Đồng ý",
    this.cancelOnPressed,
    this.yesOnPressed,

  });
  //When creating please recheck 'context' if there is an error!

  final String content;
  final String? title;
  final String? cancel;
  final String yes;
  final void Function()? cancelOnPressed;
  final void Function()? yesOnPressed;


  // BaseAlertDialog({String title, String content, Function yesOnPressed, Function noOnPressed, String yes = "Yes", String no = "No"}){
  //   this._title = title;
  //   this._content = content;
  //   this._cancelOnPressed = yesOnPressed;
  //   this._yesOnPressed = noOnPressed;
  //   this._cancel = yes;
  //   this._yes = no;
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title.wrappedValue(),
        style: getTextStyle(context, CustomTextStyle.title2SemiBold20,),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: getDynamicHeight(context, 86),
        child: Column(
          children: [
            Text(
              this.content,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getDynamicHeight(context, 25),),
            Container(
              color: Color(0xFFf5f5f5),
              width: double.infinity,
              height: 1,
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.only(top: getDynamicHeight(context, 16), bottom: 0),
      backgroundColor: Colors.white,
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actionsAlignment: MainAxisAlignment.center,
      actions: <Widget>[
        SizedBox(
          width: getDynamicWidth(context, 147),
          // height: getDynamicHeight(context, 20),
          child: TextButton(
            child: Text(cancel.wrappedValue(),
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: Color(0xFFf5222d)),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              this.cancelOnPressed!();
            },
          ),
        ),
        SizedBox(
          width: getDynamicWidth(context, 147),
          // height: getDynamicHeight(context, 20),
          child: TextButton(
            child: Text(this.yes,
              style: getTextStyle(context, CustomTextStyle.subtitle2Medium16).apply(color: $constants.theme.defaultThemeColor),
            ),
            // textColor: Colors.redAccent,
            onPressed: () {
              this.yesOnPressed!();
            },
          ),
        ),
      ],
    );
  }
}