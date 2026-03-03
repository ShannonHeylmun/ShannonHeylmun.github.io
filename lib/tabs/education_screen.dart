import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/education_card.dart';
import 'package:sh_portfolio/components/work_row.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      width: 500,
      children: [
        WorkRow(iconWidget: null, text: 'Education'),
        EducationCard(
          context: context,
          year: '08',
          school: 'Valencia College',
          degree: 'Associate of Arts in Mathematics',
        ),
        EducationCard(
          context: context,
          year: '10',
          school: 'University of Florida',
          degree: 'Bachelor of Science in Mathematics',
        ),
        EducationCard(
          context: context,
          year: '12',
          school: 'University of Florida',
          degree: 'Master of Arts in Teaching Mathematics',
        ),
      ],
    );
  }
}
