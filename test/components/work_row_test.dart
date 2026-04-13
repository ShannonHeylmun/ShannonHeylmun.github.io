import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/work_row.dart';

Widget buildApp(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );

void main() {
  group('WorkRow', () {
    testWidgets('displays text', (tester) async {
      await tester.pumpWidget(buildApp(
        const WorkRow(text: 'Education'),
      ));
      expect(find.text('Education'), findsOneWidget);
    });

    testWidgets('renders icon widget when provided', (tester) async {
      await tester.pumpWidget(buildApp(
        WorkRow(
          text: 'Work',
          iconWidget: const Icon(Icons.work, key: Key('icon')),
        ),
      ));
      expect(find.byKey(const Key('icon')), findsOneWidget);
    });

    testWidgets('omits icon widget when null', (tester) async {
      await tester.pumpWidget(buildApp(
        const WorkRow(text: 'Work', iconWidget: null),
      ));
      expect(find.byType(Icon), findsNothing);
    });

    testWidgets('row is centered', (tester) async {
      await tester.pumpWidget(buildApp(
        const WorkRow(text: 'Work'),
      ));
      final row = tester.widget<Row>(find.byType(Row));
      expect(row.mainAxisAlignment, MainAxisAlignment.center);
    });
  });
}
