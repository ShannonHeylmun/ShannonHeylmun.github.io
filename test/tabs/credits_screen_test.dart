import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/tabs/credits_screen.dart';

void main() {
  group('CreditsScreen', () {
    testWidgets('renders without throwing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: CreditsScreen()),
      );
      await tester.pump();
    });

    testWidgets('shows the "Built with" heading', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: CreditsScreen()),
      );
      await tester.pump();
      expect(find.text('Built with'), findsOneWidget);
    });

    testWidgets('shows package text links', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: CreditsScreen()),
      );
      await tester.pump();
      expect(find.text('google_fonts'), findsOneWidget);
      expect(find.text('logging'), findsOneWidget);
      expect(find.text('hugeicons'), findsOneWidget);
      expect(find.text('flutter_svg'), findsOneWidget);
      expect(find.text('prevent_orphan_text'), findsOneWidget);
    });

    testWidgets('renders three SizedIconLinks', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: CreditsScreen()),
      );
      await tester.pump();
      expect(find.byType(SizedIconLink), findsNWidgets(3));
    });
  });

  group('SizedIconLink', () {
    testWidgets('is 64 × 64', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedIconLink(
              link: 'https://example.com',
              icon: const Icon(Icons.star, key: Key('icon')),
            ),
          ),
        ),
      );
      final size = tester.getSize(find.byType(SizedBox).first);
      expect(size.width, 64);
      expect(size.height, 64);
    });

    testWidgets('renders the provided icon', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedIconLink(
              link: 'https://example.com',
              icon: const Icon(Icons.star, key: Key('icon')),
            ),
          ),
        ),
      );
      expect(find.byKey(const Key('icon')), findsOneWidget);
    });
  });
}
