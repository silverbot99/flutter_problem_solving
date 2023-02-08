import 'package:flutter/cupertino.dart';
import 'package:flutter_problem_solving/features/dashboard/models/dashboard_choose_emotions.dart';
import 'package:flutter_problem_solving/features/dashboard/models/data_txt.dart';

import '../../../i18n/strings.g.dart';

class CurrentEmotion{
  final ChooseEmotionsEnum currentEmotion;
  final List<DataTXT> myObjectList;

  static CurrentEmotion _instance = CurrentEmotion._(ChooseEmotionsEnum.happy, []);

  factory CurrentEmotion(ChooseEmotionsEnum currentEmotion, List<DataTXT> myObjectList){
    _instance = CurrentEmotion(currentEmotion, myObjectList);
    return _instance;
  }

  CurrentEmotion._(this.currentEmotion, this.myObjectList);


  void addDataToList(DataTXT data){
    final existedItem = myObjectList.firstWhere((element) => element.placeholder == data.placeholder).placeholder.isNotEmpty;
    if (!existedItem) {
      myObjectList.add(data);
    }
  }

  List<DataTXT> getMyObjectsList(){
    return myObjectList;
  }
}
