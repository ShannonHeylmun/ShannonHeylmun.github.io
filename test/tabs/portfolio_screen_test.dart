import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/tabs/portfolio_screen.dart';
import 'package:ShannonHeylmun.github.io/components/portfolio_card.dart';

void main() {
  group('PortfolioScreen', () {
    testWidgets('renders without throwing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
    });

    testWidgets('renders four PortfolioCards', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
      expect(find.byType(PortfolioCard), findsNWidgets(4));
    });

    testWidgets('shows icon_icon project', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
      expect(find.text('icon_icon'), findsOneWidget);
    });

    testWidgets('shows Cloud Appreciation Society project', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
      expect(find.text('Cloud Appreciation Society'), findsOneWidget);
    });

    testWidgets('shows KTArtistryPaints project', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
      expect(find.text('KTArtistryPaints'), findsOneWidget);
    });

    testWidgets('shows BenRussoMath project', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PortfolioScreen()),
      );
      await tester.pump();
      expect(find.text('BenRussoMath'), findsOneWidget);
    });
  });
}
