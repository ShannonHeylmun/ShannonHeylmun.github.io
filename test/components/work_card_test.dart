import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/work_card.dart';

Widget buildApp(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );

void main() {
  group('WorkCard', () {
    testWidgets('renders provided children', (tester) async {
      await tester.pumpWidget(buildApp(WorkCard(
        children: [
          const Text('child one', key: Key('c1')),
          const Text('child two', key: Key('c2')),
        ],
      )));
      expect(find.byKey(const Key('c1')), findsOneWidget);
      expect(find.byKey(const Key('c2')), findsOneWidget);
    });

    testWidgets('children are placed inside a Wrap', (tester) async {
      await tester.pumpWidget(buildApp(WorkCard(
        children: [const Text('item')],
      )));
      expect(find.byType(Wrap), findsOneWidget);
    });

    testWidgets('wraps content in a Card', (tester) async {
      await tester.pumpWidget(buildApp(WorkCard(children: [])));
      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('Wrap uses center alignment', (tester) async {
      await tester.pumpWidget(buildApp(WorkCard(children: [])));
      final wrap = tester.widget<Wrap>(find.byType(Wrap));
      expect(wrap.alignment, WrapAlignment.center);
    });
  });
}
