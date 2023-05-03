import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/features/dashboard/models/dashboard_choose_emotions.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';
import 'package:hive/hive.dart';

class ChooseEmotions extends StatefulWidget {
  const ChooseEmotions({
    super.key,
    required this.isHappy,
    required this.isBadMood,
    required this.isStress,
    required this.isDissatisfied,
    required this.isAnxious,
  });
  final bool isHappy;
  final bool isBadMood;
  final bool isStress;
  final bool isDissatisfied;
  final bool isAnxious;

  @override
  State<StatefulWidget> createState() => _ChooseEmotionsState();
}

class _ChooseEmotionsState extends State<ChooseEmotions> {
  bool isHappy = false;
  bool isBadMood = false;
  bool isStress = false;
  bool isDissatisfied = false;
  bool isAnxious = false;

  @override
  void initState() {
    super.initState();
    isHappy = widget.isHappy;
    isBadMood = widget.isBadMood;
    isStress = widget.isStress;
    isDissatisfied = widget.isDissatisfied;
    isAnxious = widget.isAnxious;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(context.t.strings.dashboard.how_you_feel),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    onClickEmotions(ChooseEmotionsEnum.happy);
                  },
                  icon: Icon(
                    Icons.sentiment_very_satisfied,
                    size: 32,
                    color: (!isHappy) ? Colors.white : Colors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    onClickEmotions(ChooseEmotionsEnum.badMood);
                  },
                  icon: Icon(
                    Icons.mood_bad,
                    size: 32,
                    color: (!isBadMood) ? Colors.white : Colors.pink,
                  ),),
                IconButton(
                  onPressed: () {
                    onClickEmotions(ChooseEmotionsEnum.stress);
                  },
                  icon: Icon(
                    Icons.sentiment_dissatisfied,
                    size: 32,
                    color: (!isStress) ? Colors.white : Colors.pink,
                  ),),
                IconButton(
                  onPressed: () {
                    onClickEmotions(ChooseEmotionsEnum.dissatisfied);
                  },
                  icon: Icon(
                    Icons.sentiment_very_dissatisfied,
                    size: 32,
                    color: (!isDissatisfied) ? Colors.white : Colors.pink,
                  ),),
                IconButton(
                  onPressed: () {
                    onClickEmotions(ChooseEmotionsEnum.anxious);
                  },
                  icon: Icon(
                    Icons.sentiment_very_dissatisfied_outlined,
                    size: 32,
                    color: (!isAnxious) ? Colors.white : Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onClickEmotions(ChooseEmotionsEnum emotion) {
    print('click emotion: $emotion');
    final emotionBox = Hive.box<ChooseEmotionsEnum>('emotion');

    setState(() {
      isHappy = false;
      isBadMood = false;
      isStress = false;
      isDissatisfied = false;
      isAnxious = false;

      switch (emotion) {
        case ChooseEmotionsEnum.happy:
          isHappy = true;
          emotionBox.put('emotion_key', ChooseEmotionsEnum.happy);
          break;
        case ChooseEmotionsEnum.badMood:
          isBadMood = true;
          emotionBox.put('emotion_key', ChooseEmotionsEnum.badMood);
          break;
        case ChooseEmotionsEnum.stress:
          isStress = true;
          emotionBox.put('emotion_key', ChooseEmotionsEnum.stress);
          break;
        case ChooseEmotionsEnum.dissatisfied:
          isDissatisfied = true;
          emotionBox.put('emotion_key', ChooseEmotionsEnum.dissatisfied);
          break;
        case ChooseEmotionsEnum.anxious:
          isAnxious = true;
          emotionBox.put('emotion_key', ChooseEmotionsEnum.anxious);
          break;
      }

    });

  }
}