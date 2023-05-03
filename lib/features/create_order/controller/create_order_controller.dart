import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/features/app/models/alert_model.dart';
import 'package:flutter_problem_solving/features/app/widgets/bar/bar.dart';
import 'package:flutter_problem_solving/features/create_order/presentation/create_order_screen.dart';

import '../../../utils/helpers/bar_helper.dart';
import '../../app/widgets/customs/base_alert_dialog.dart';
import '../models/step_create_order.dart';

extension CreateOrderController on CreateOrderScreenState {
  void clickContinue() {
    setState(() {
      if (currentStep == StepCreateOrder.infoCustomer) {
        currentStep = StepCreateOrder.infoOrder;
      }
      if ((currentStep == StepCreateOrder.infoOrder) && deliveryChargesForm.valid) {
      var baseDialog = BaseAlertDialog(
          content: "Bạn chắc chắn muốn tạo đơn hàng này?",
          yesOnPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pop();

            BarHelper.showAlert(
              context,
              barPosition: BarPosition.top,
              alert: AlertModel.alert(
                message: 'Đơn hàng đã được tạo thành công',
                type: AlertType.constructive,
              ),
              isTest: false,
            );
          },
          cancelOnPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pop();
          },
      );
      showDialog(context: context, builder: (BuildContext context) => baseDialog);
    }
    });

  }
}