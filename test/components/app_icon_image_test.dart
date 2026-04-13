import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/app_icon_image.dart';

void main() {
  group('AppIconImage', () {
    testWidgets('renders with semantic label', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppIconImage(
              assetImage: 'assets/ben.png',
              semanticLabel: 'My App',
            ),
          ),
        ),
      );
      expect(
        find.bySemanticsLabel("An iOS-style 'icon' containing My App"),
        findsOneWidget,
      );
    });

    testWidgets('renders at the default height of 100', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppIconImage(assetImage: 'assets/ben.png'),
          ),
        ),
      );
      final size = tester.getSize(find.byType(AppIconImage));
      expect(size.height, 100);
    });

    testWidgets('renders at a custom height', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppIconImage(assetImage: 'assets/ben.png', height: 60),
          ),
        ),
      );
      final size = tester.getSize(find.byType(AppIconImage));
      expect(size.height, 60);
    });

    testWidgets('maintains a 1:1 aspect ratio', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppIconImage(assetImage: 'assets/ben.png', height: 80),
          ),
        ),
      );
      final size = tester.getSize(find.byType(AppIconImage));
      expect(size.width, size.height);
    });
  });
}
