import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:flutter_problem_solving/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:flutter_problem_solving/features/create_order/controller/create_order_controller.dart';
import 'package:flutter_problem_solving/features/create_order/form/create_order_form.dart';
import 'package:flutter_problem_solving/features/create_order/models/list_info_order_view_model_extension.dart';
import 'package:flutter_problem_solving/features/create_order/models/step_create_order.dart';
import 'package:flutter_problem_solving/features/create_order/presentation/components/info_order_view/components/info_product_view.dart';
import 'package:flutter_problem_solving/features/create_order/presentation/components/info_order_view/info_order_view.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';
import '../../../utils/constants.dart';
import '../../app/widgets/customs/currency_textinput_formatter.dart';
import '../../app/widgets/customs/custom_button.dart';
import '../../app/widgets/customs/custom_textfield.dart';
import 'components/info_customer_view.dart';
import 'components/info_order_view/models/info_order_view_model.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({
    super.key,
    @visibleForTesting this.infoCustomerForm,
    @visibleForTesting this.deliveryChargesForm,
  });

  final FormGroup? infoCustomerForm;
  final FormGroup? deliveryChargesForm;

  @override
  State<CreateOrderScreen> createState() => CreateOrderScreenState();
}

class CreateOrderScreenState extends State<CreateOrderScreen>{
  late RoundedLoadingButtonController _btnController;

  late final FormGroup? infoCustomerForm;

  List<InfoOrderViewModel> listInfoProductForm = [
    InfoOrderViewModel(
      infoProductCreateOrderForm,
      1,
    ),
  ];

  late FormGroup deliveryChargesForm;

  late StepCreateOrder currentStep;
  String get deliveryCharges => deliveryChargesCreateOrderForm.control('delivery_charges').value.toString();

  @override
  initState() {
    currentStep = StepCreateOrder.infoCustomer;
    _btnController = RoundedLoadingButtonController();
    infoCustomerForm = widget.infoCustomerForm ?? infoCustomerCreateOrderForm;
    deliveryChargesForm = widget.deliveryChargesForm ?? deliveryChargesCreateOrderForm;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisserWidget(
        child: Scaffold(
          body:  SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(top: 16, bottom: 16, left: 20),
                  child: Text(
                    (currentStep == StepCreateOrder.infoCustomer) ? context.t.strings.create_order.text_information_customer : context.t.strings.create_order.text_information_order,
                    style: getTextStyle(context, CustomTextStyle.heading2Bold32).apply(
                      color: $constants.theme.defaultThemeColor,
                    ),
                  ),
                ),

                SizedBox(height: getDynamicHeight(context, 20),),

                Visibility(
                  visible: currentStep == StepCreateOrder.infoCustomer,
                  replacement: InfoOrderCreateOrderView(
                    listInfoProductForm: listInfoProductForm,
                  ),
                    child: InfoCustomerCreateOrderView(
                      clickContinue: clickContinue,
                    ),
                ),

                Visibility(
                  visible: (currentStep == StepCreateOrder.infoOrder),
                    child: Column(
                      children: [
                        SizedBox(height: getDynamicHeight(context, 35)),

                        ReactiveForm(formGroup: deliveryChargesForm,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              children: [
                                CustomTextField(
                                  key: const Key('delivery_charges'),
                                  formControlName: 'delivery_charges',
                                  titleCustomTextStyle: CustomTextStyle.heading5Bold16,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    CurrencyTextInputFormatter(),
                                  ],
                                  textInputAction: TextInputAction.next,
                                  titleText:context.t.strings.form.delivery_charges.label,
                                  labelText: context.t.strings.form.delivery_charges.hint,
                                  hintText: context.t.strings.form.delivery_charges.hint,
                                  isRequired: true,
                                ),

                                const SizedBox(height: 23,),

                                SizedBox(
                                  width: getSize(context).width - 40,
                                  child: Text(
                                    context.t.strings.create_order.text_price,
                                    style: getTextStyle(context, CustomTextStyle.heading4Bold20),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        context.t.strings.create_order.text_total_price,
                                        style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                      ),
                                      Spacer(),

                                      Text(
                                        listInfoProductForm.getTotalPriceInList().formatCurrencyNoVND(),
                                        style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        context.t.strings.create_order.text_delivery_charges,
                                        style: getTextStyle(context, CustomTextStyle.body1Regular16),
                                      ),
                                      Spacer(),

                                      Text(
                                        deliveryChargesForm.getDoubleValue('delivery_charges').formatCurrencyNoVND(),
                                        style: getTextStyle(context, CustomTextStyle.subtitle2Medium16),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  child: Container(
                                    width: getSize(context).width - 40,
                                    height: 1,
                                    color: $constants.theme.defaultColorDisable,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: SizedBox(
                                    width: getSize(context).width - 40,
                                    child: Text(
                                      (listInfoProductForm.getTotalPriceInList() + deliveryChargesForm.getDoubleValue('delivery_charges')).formatCurrency(),
                                      style: getTextStyle(context, CustomTextStyle.heading4Bold20),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),

                                SizedBox(height: getDynamicHeight(context, 48),),
                                SizedBox(height: getDynamicHeight(context, 48),),
                                ReactiveFormConsumer(
                                  builder: (context, formGroup, child) => CustomButton(
                                    controller: _btnController,
                                    width: getSize(context).width,
                                    text: context.t.strings.create_order.title,
                                    onPressed: (listInfoProductForm.isAllValid() && deliveryChargesForm.valid)
                                        ? clickContinue
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                ),

                const SizedBox(height: 100,),
              ],
            ),
          ),
        ),
    );
  }
}