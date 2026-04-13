import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/education_card.dart';

Widget buildApp(Widget Function(BuildContext) builder) => MaterialApp(
      home: Scaffold(
        body: Builder(builder: builder),
      ),
    );

void main() {
  group('EducationCard', () {
    testWidgets('displays year with leading apostrophe', (tester) async {
      await tester.pumpWidget(buildApp(
        (ctx) => EducationCard(
          context: ctx,
          year: '08',
          school: 'Valencia College',
          degree: 'Associate of Arts',
        ),
      ));
      expect(find.text("'08"), findsOneWidget);
    });

    testWidgets('displays school name', (tester) async {
      await tester.pumpWidget(buildApp(
        (ctx) => EducationCard(
          context: ctx,
          year: '10',
          school: 'University of Florida',
          degree: 'Bachelor of Science',
        ),
      ));
      expect(find.text('University of Florida'), findsOneWidget);
    });

    testWidgets('displays degree', (tester) async {
      await tester.pumpWidget(buildApp(
        (ctx) => EducationCard(
          context: ctx,
          year: '12',
          school: 'University of Florida',
          degree: 'Master of Arts in Teaching',
        ),
      ));
      expect(find.text('Master of Arts in Teaching'), findsOneWidget);
    });

    testWidgets('wraps content in a Card', (tester) async {
      await tester.pumpWidget(buildApp(
        (ctx) => EducationCard(
          context: ctx,
          year: '08',
          school: 'Valencia College',
          degree: 'Associate of Arts',
        ),
      ));
      expect(find.byType(Card), findsOneWidget);
    });
  });
}
