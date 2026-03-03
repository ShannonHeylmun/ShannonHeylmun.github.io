import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  final List<Widget> children;
  const WorkCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8,
          children: children,
        ),
      ),
    );
  }
}
