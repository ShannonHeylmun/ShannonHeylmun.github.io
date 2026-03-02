import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ExperienceTabIcon extends StatelessWidget {
  const ExperienceTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedWorkHistory);
  }
}

class EducationTabIcon extends StatelessWidget {
  const EducationTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedSchool);
  }
}

class ContactTabIcon extends StatelessWidget {
  const ContactTabIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HugeIcon(icon: HugeIcons.strokeRoundedContact);
  }
}
