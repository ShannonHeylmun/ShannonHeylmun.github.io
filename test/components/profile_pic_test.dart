import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/components/app_icon_image.dart';
import 'package:ShannonHeylmun.github.io/components/profile_pic.dart';

void main() {
  group('ProfilePic', () {
    testWidgets('renders an AppIconImage', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProfilePic())),
      );
      expect(find.byType(AppIconImage), findsOneWidget);
    });

    testWidgets('is wrapped in a Center widget', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ProfilePic())),
      );
      expect(
        find.ancestor(
          of: find.byType(AppIconImage),
          matching: find.byType(Center),
        ),
        findsOneWidget,
      );
    });
  });
}
