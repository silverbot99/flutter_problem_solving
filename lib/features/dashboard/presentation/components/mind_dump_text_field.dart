import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';

class MindDumbTextField extends StatefulWidget {
  const MindDumbTextField({Key? key, required this.placeholderText, required this.text}) : super(key: key);

  final String placeholderText;
  final String text;

  @override
  State<MindDumbTextField> createState() => _MindDumbTextFieldState();
}

class _MindDumbTextFieldState extends State<MindDumbTextField> {
  TextEditingController editTextController = TextEditingController();

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
            padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Text(widget.placeholderText),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration.collapsed(
                hintText: context.t.strings.dashboard.hint_write,
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: TextEditingController(text: widget.text),
            ),
          ),
        ],
      ),
    );
  }
}