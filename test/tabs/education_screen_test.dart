import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/tabs/education_screen.dart';
import 'package:ShannonHeylmun.github.io/components/education_card.dart';

void main() {
  group('EducationScreen', () {
    testWidgets('renders without throwing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EducationScreen()),
      );
      await tester.pump();
    });

    testWidgets('displays the Education heading', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EducationScreen()),
      );
      await tester.pump();
      expect(find.text('Education'), findsOneWidget);
    });

    testWidgets('renders three EducationCards', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EducationScreen()),
      );
      await tester.pump();
      expect(find.byType(EducationCard), findsNWidgets(3));
    });

    testWidgets('shows Valencia College', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EducationScreen()),
      );
      await tester.pump();
      expect(find.text('Valencia College'), findsOneWidget);
    });

    testWidgets('shows University of Florida for two degrees', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EducationScreen()),
      );
      await tester.pump();
      expect(find.text('University of Florida'), findsNWidgets(2));
    });
  });
}
