import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../utils/methods/shortcuts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int counter = 0;
  String counterKey = 'home_counter';


  @override
  void initState() {
    // setupHive();
    super.initState();
    final box = Hive.box<int>('tutorial');
    final value = box.get(counterKey) ?? 0;
    counter = value;
  }

  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder(
    //   valueListenable: Hive.box('settings').listenable(),
    //   builder: (context, box, widget) {
    //     return Switch(
    //         value: boolNotNull(box.get('darkMode')),
    //         onChanged: (val) {
    //           box.put('darkMode', val);
    //         },
    //     );
    //   },
    // );
    return Scaffold(
      body: Center(
        child: Text(
          'count: $counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: incrementAction,
          label: const Text('Increment')),
    );
  }

  void incrementAction() {
    final box = Hive.box<int>('tutorial');

    setState(() {
      counter = counter + 1;
    });
    box.put(counterKey, counter);
  }
}