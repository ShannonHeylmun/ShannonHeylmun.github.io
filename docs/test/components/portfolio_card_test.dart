import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/portfolio_card.dart';

// Wrap in a sized box so ExpandablePanel has a bounded width to lay out in.
Widget buildApp(Widget child) => MaterialApp(
      home: Scaffold(
        body: SizedBox(width: 400, child: child),
      ),
    );

void main() {
  group('PortfolioCard', () {
    testWidgets('displays name', (tester) async {
      await tester.pumpWidget(buildApp(PortfolioCard(
        name: 'My App',
        assetImage: 'assets/ben.png',
        body: 'Body text',
        semanticLabel: null,
      )));
      await tester.pump();
      expect(find.text('My App'), findsOneWidget);
    });

    testWidgets('displays subtitle when provided', (tester) async {
      await tester.pumpWidget(buildApp(PortfolioCard(
        name: 'My App',
        subtitle: 'iOS • Flutter',
        assetImage: 'assets/ben.png',
        body: 'Body text',
        semanticLabel: null,
      )));
      await tester.pump();
      expect(find.text('iOS • Flutter'), findsOneWidget);
    });

    testWidgets('renders empty string when subtitle is omitted', (tester) async {
      await tester.pumpWidget(buildApp(PortfolioCard(
        name: 'My App',
        assetImage: 'assets/ben.png',
        body: 'Body text',
        semanticLabel: null,
      )));
      await tester.pump();
      // subtitle ?? "" falls back to an empty string
      expect(find.text(''), findsOneWidget);
    });

    testWidgets('displays body text (expanded by default)', (tester) async {
      await tester.pumpWidget(buildApp(PortfolioCard(
        name: 'My App',
        assetImage: 'assets/ben.png',
        body: 'A detailed description.',
        semanticLabel: null,
      )));
      await tester.pump();
      expect(find.text('A detailed description.'), findsOneWidget);
    });

    group('nameLink', () {
      testWidgets('name is plain Text when nameLink is null', (tester) async {
        await tester.pumpWidget(buildApp(PortfolioCard(
          name: 'My App',
          assetImage: 'assets/ben.png',
          body: 'Body',
          semanticLabel: null,
        )));
        await tester.pump();
        expect(
          find.ancestor(
            of: find.text('My App'),
            matching: find.byType(InkWell),
          ),
          findsNothing,
        );
      });

      testWidgets('name is wrapped in InkWell when nameLink is provided',
          (tester) async {
        await tester.pumpWidget(buildApp(PortfolioCard(
          name: 'My App',
          assetImage: 'assets/ben.png',
          body: 'Body',
          semanticLabel: null,
          nameLink: 'https://example.com',
        )));
        await tester.pump();
        expect(
          find.ancestor(
            of: find.text('My App'),
            matching: find.byType(InkWell),
          ),
          findsOneWidget,
        );
      });

      testWidgets('long press on name copies nameLink to clipboard',
          (tester) async {
        final List<MethodCall> clipboardCalls = [];
        tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          SystemChannels.platform,
          (call) async {
            if (call.method == 'Clipboard.setData') {
              clipboardCalls.add(call);
            }
            return null;
          },
        );

        await tester.pumpWidget(buildApp(PortfolioCard(
          name: 'My App',
          assetImage: 'assets/ben.png',
          body: 'Body',
          semanticLabel: null,
          nameLink: 'https://example.com',
        )));
        await tester.pump();

        await tester.longPress(find.text('My App'));
        await tester.pump();

        expect(clipboardCalls, hasLength(1));
        expect(
          (clipboardCalls.first.arguments as Map)['text'],
          'https://example.com',
        );
      });
    });
  });
}
