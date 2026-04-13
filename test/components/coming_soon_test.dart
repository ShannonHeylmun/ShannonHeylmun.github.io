import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/coming_soon.dart';

void main() {
  group('ComingSoon', () {
    testWidgets('displays "Coming Soon" text', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ComingSoon(
            title: 'title',
            description: 'desc',
            imageUrl: '',
          ),
        ),
      );
      expect(find.text('Coming Soon'), findsOneWidget);
    });

    testWidgets('accepts title, description, and imageUrl without throwing',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ComingSoon(
            title: 'My Title',
            description: 'My Description',
            imageUrl: 'https://example.com/img.png',
          ),
        ),
      );
      expect(find.text('Coming Soon'), findsOneWidget);
    });
  });
}
