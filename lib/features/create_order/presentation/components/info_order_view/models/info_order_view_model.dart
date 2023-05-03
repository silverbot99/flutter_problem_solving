import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_problem_solving/features/create_order/form/create_order_form.dart';


class InfoOrderViewModel {
  InfoOrderViewModel(FormGroup infoProductCreateOrderForm, int i);

  FormGroup formGroup = infoProductCreateOrderForm;
  int quantity = 1;
}

