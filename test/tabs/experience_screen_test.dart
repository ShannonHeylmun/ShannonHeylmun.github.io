import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/tabs/experience_screen.dart';
import 'package:ShannonHeylmun.github.io/components/work_card.dart';
import 'package:ShannonHeylmun.github.io/components/work_row.dart';

void main() {
  group('ExperienceScreen', () {
    testWidgets('renders without throwing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
    });

    testWidgets('shows three section headings', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.text('Full-Stack Development'), findsOneWidget);
      expect(find.text('Mathematics Teaching'), findsOneWidget);
      expect(find.text('Interests & Hobbies'), findsOneWidget);
    });

    testWidgets('renders three WorkRow headings', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.byType(WorkRow), findsNWidgets(3));
    });

    testWidgets('renders three WorkCards', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.byType(WorkCard), findsNWidgets(3));
    });

    testWidgets('shows Flutter as a development skill', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.text('Flutter'), findsOneWidget);
    });

    testWidgets('shows math subjects', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.text('Elementary Algebra'), findsOneWidget);
      expect(find.text('Calculus'), findsOneWidget);
    });

    testWidgets('shows hobbies', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExperienceScreen()),
      );
      await tester.pump();
      expect(find.text('SCUBA'), findsOneWidget);
      expect(find.text('Gardening'), findsOneWidget);
    });
  });
}
