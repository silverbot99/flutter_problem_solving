import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  // final double currentAmount;

  @override
  State<StatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Chào buổi sáng, Silvia'),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: getSize(context).width,
                  child: GestureDetector(
                    onTap: () {
                      print('Click edit Money');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Số tiền hiện tại'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: const [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('VND 0',
                                      style: TextStyle(
                                        color: Color.fromRGBO(45, 153, 255, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}