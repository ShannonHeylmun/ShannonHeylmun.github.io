import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/tab_scaffold.dart';

void main() {
  group('TabScaffold', () {
    testWidgets('renders a single child', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: TabScaffold(
            children: [const Text('Hello', key: Key('child'))],
          ),
        ),
      );
      expect(find.byKey(const Key('child')), findsOneWidget);
    });

    testWidgets('renders multiple children', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: TabScaffold(
            children: [
              const Text('First', key: Key('a')),
              const Text('Second', key: Key('b')),
            ],
          ),
        ),
      );
      expect(find.byKey(const Key('a')), findsOneWidget);
      expect(find.byKey(const Key('b')), findsOneWidget);
    });

    testWidgets('renders without throwing when children is empty',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: TabScaffold(children: [])),
      );
      // Should not throw; column simply has no children.
      expect(find.byType(Column), findsOneWidget);
    });

    testWidgets('has a SafeArea', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: TabScaffold(children: [const Text('content')]),
        ),
      );
      expect(find.byType(SafeArea), findsOneWidget);
    });

    testWidgets('has a SingleChildScrollView', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: TabScaffold(children: [const Text('content')]),
        ),
      );
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('respects custom max width via BoxConstraints', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: TabScaffold(
            width: 400,
            children: [const Text('content')],
          ),
        ),
      );
      final container = tester.widget<Container>(
        find
            .ancestor(
              of: find.byType(SingleChildScrollView),
              matching: find.byType(Container),
            )
            .first,
      );
      expect(container.constraints?.maxWidth, 400);
    });
  });
}
