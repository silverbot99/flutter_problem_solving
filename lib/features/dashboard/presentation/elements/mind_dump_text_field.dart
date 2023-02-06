import 'package:flutter/material.dart';

class MindDumbTextField extends StatelessWidget {
  const MindDumbTextField({super.key});

  String placeholderText;
  final TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text("Vấn đề của bạn hiện tại"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 16),
            child: TextField(
              controller: editTextController,
            ),
          ),
        ],
      ),
    );
  }
}