import 'package:flutter/material.dart';

class WorkRow extends StatelessWidget {
  final Widget? iconWidget;
  final String text;
  const WorkRow({super.key, this.iconWidget, required this.text});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      ?iconWidget,
      Text(text, style: Theme.of(context).textTheme.headlineSmall),
    ];
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
