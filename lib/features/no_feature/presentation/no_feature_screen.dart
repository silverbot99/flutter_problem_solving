import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';

class NoFeatureScreen extends StatelessWidget {
  const NoFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(context.t.strings.no_feature.in_progress),
            ),
          ],
        ),
      ),
    );
  }
}