import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_problem_solving/features/create_order/form/create_order_form.dart';
import 'package:flutter_problem_solving/features/create_order/presentation/components/info_order_view/components/info_product_view.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';

import 'models/info_order_view_model.dart';


class InfoOrderCreateOrderView extends StatefulWidget {
  const InfoOrderCreateOrderView({
    super.key, required this.listInfoProductForm,
  });

  final List<InfoOrderViewModel> listInfoProductForm;

  @override
  State<InfoOrderCreateOrderView> createState() => InfoOrderCreateOrderViewState();
}

class InfoOrderCreateOrderViewState extends State<InfoOrderCreateOrderView> {
  late FormGroup currentInfoProductForm;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.listInfoProductForm.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: InfoProductCreateOrderView(
            infoProductForm: widget.listInfoProductForm[index].formGroup,
            onChangeQuantity: (isAdd) {
              onChangeQuantity(isAdd, index);
            },
            onAddProduct: () {
              onAddProduct(index);
            },
            onRemoveProduct: (){
              onRemoveProduct(index);
            },
            isFirst: index == 0,
          ),
        );
      },
    );
  }

  void onAddProduct(int index) {
    print("DEBUG: add Product");
    setState(() {
      widget.listInfoProductForm.add(
        InfoOrderViewModel(infoProductCreateOrderForm, 1),
      );
    });
  }

  void onRemoveProduct(int index) {
    print("DEBUG: remove Product");
    if (index != 0){
      setState(() {
        widget.listInfoProductForm.removeAt(index);
      });
    }
    
  }

  void onChangeQuantity(bool isAdd, int index){
    setState(() {
      var intQuantity = widget.listInfoProductForm[index].formGroup.control('quantity').value.toString().toInt();
      if (isAdd) {
        widget.listInfoProductForm[index].formGroup.control('quantity').updateValue((intQuantity + 1).toString());
      }
      else {
        if (intQuantity >= 2){
          widget.listInfoProductForm[index].formGroup.control('quantity').updateValue((intQuantity - 1).toString());
        }
      }
    });
  }
}