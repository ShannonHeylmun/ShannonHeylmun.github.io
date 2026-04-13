import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/tabs/about_screen.dart';
import 'package:ShannonHeylmun.github.io/components/profile_pic.dart';
import 'package:ShannonHeylmun.github.io/helpers.dart';

void main() {
  group('AboutScreen', () {
    testWidgets('renders without throwing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: AboutScreen()),
      );
      await tester.pump();
    });

    testWidgets('renders a ProfilePic', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: AboutScreen()),
      );
      await tester.pump();
      expect(find.byType(ProfilePic), findsOneWidget);
    });

    testWidgets('renders two IconLinks (LinkedIn and GitHub)', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: AboutScreen()),
      );
      await tester.pump();
      expect(find.byType(IconLink), findsNWidgets(2));
    });

    testWidgets('renders a GestureDetector for the email link', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: AboutScreen()),
      );
      await tester.pump();
      expect(find.byType(GestureDetector), findsOneWidget);
    });

    testWidgets('shows bio content', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: AboutScreen()),
      );
      await tester.pump();
      // Verify a distinctive excerpt from the bio is rendered.
      expect(
        find.textContaining('full stack mobile and web developer'),
        findsOneWidget,
      );
    });
  });
}
