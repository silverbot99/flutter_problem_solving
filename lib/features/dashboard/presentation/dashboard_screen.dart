import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:flutter_problem_solving/features/dashboard/models/dashboard_choose_emotions.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';
import 'package:hive/hive.dart';
import '../models/data_txt.dart';
import 'components//choose_emotions.dart';
import 'components/mind_dump_text_field.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String textDescription = '';
  String textInfo = '';

  // bool isHappy = false;
  // bool isBadMood = false;
  // bool isStress = false;
  // bool isDissatisfied = false;
  // bool isAnxious = false;

  ChooseEmotionsEnum emotion = ChooseEmotionsEnum.happy;
  List<DataTXT> arrText = [];

  @override
  void initState() {
    super.initState();
    final emotionBox = Hive.box<ChooseEmotionsEnum>('emotion');
    final problemListDataBox = Hive.box<List<DataTXT>>('problem_list_data');

    final emotionValue = emotionBox.get('emotion_key') ?? ChooseEmotionsEnum.happy;
    final problemListDataValue = problemListDataBox.get('problem_list_data_key') ?? [];

    emotion = emotionValue;
    arrText = problemListDataValue;
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisserWidget(
        child: Scaffold(
          body: SizedBox(
            width: getSize(context).width,
            height: getSize(context).height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(context.t.strings.dashboard.greeting),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: ChooseEmotions(
                      isHappy: (emotion == ChooseEmotionsEnum.happy) ? true : false,
                      isBadMood: (emotion == ChooseEmotionsEnum.badMood) ? true : false,
                      isStress: (emotion == ChooseEmotionsEnum.stress) ? true : false,
                      isDissatisfied: (emotion == ChooseEmotionsEnum.dissatisfied) ? true : false,
                      isAnxious: (emotion == ChooseEmotionsEnum.anxious) ? true : false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: MindDumbTextField(
                      placeholderText: context.t.strings.dashboard.description,
                      text: textDescription,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: MindDumbTextField(
                      placeholderText: context.t.strings.dashboard.info_problem,
                      text: textDescription,
                    ),
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: arrText.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                        child: MindDumbTextField(
                          placeholderText: arrText[index].placeholder,
                          text: arrText[index].content,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.add_circle,
                          size: 40,
                          color: Colors.grey,
                        ), onPressed: () {
                          setState(() {
                            arrText.add(
                                const DataTXT(
                                    placeholder: '',
                                    content: '',
                                    isTrue: true,
                                    errorMSG: '',
                                ),
                            );
                          });
                          final problemListDataBox = Hive.box<List<DataTXT>>('problem_list_data');
                          problemListDataBox.put('problem_list_data_key', arrText);
                      },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}