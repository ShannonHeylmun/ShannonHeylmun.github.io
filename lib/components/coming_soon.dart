import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';

class ComingSoon extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ComingSoon({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Coming Soon"),
          ),
        ),
      ],
    );
  }
}
