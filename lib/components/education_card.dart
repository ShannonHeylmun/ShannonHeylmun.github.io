import 'dart:math' as math;

import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.context,
    required this.year,
    required this.school,
    required this.degree,
  });

  final BuildContext context;
  final String year;
  final String school;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Transform.translate(
                    offset: const Offset(0, 3),
                    child: Transform.rotate(
                      angle: -math.pi / 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("'$year")],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    school,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(degree, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
