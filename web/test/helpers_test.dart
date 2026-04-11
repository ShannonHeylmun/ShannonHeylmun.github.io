import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ShannonHeylmun.github.io/helpers.dart';

// ─── Helpers ──────────────────────────────────────────────────────────────────

// TextLink requires a BuildContext at construction time, so wrap it in a
// Builder to capture one from inside the MaterialApp tree.
Widget buildWithTextLink({
  String url = 'https://example.com',
  String text = 'Click me',
  Color? color,
  TextStyle? style,
}) {
  return MaterialApp(
    home: Builder(
      builder: (ctx) => Scaffold(
        body: TextLink(
          context: ctx,
          url: url,
          text: text,
          color: color,
          style: style,
        ),
      ),
    ),
  );
}

Widget buildWithIconLink({
  String url = 'https://example.com',
  Widget icon = const Icon(Icons.star),
}) {
  return MaterialApp(
    home: Scaffold(body: IconLink(url: url, icon: icon)),
  );
}

// Installs a mock platform-channel handler that records Clipboard.setData
// calls and silently swallows everything else (HapticFeedback, etc.).
List<MethodCall> mockClipboard(WidgetTester tester) {
  final calls = <MethodCall>[];
  tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
    SystemChannels.platform,
    (call) async {
      if (call.method == 'Clipboard.setData') calls.add(call);
      return null;
    },
  );
  return calls;
}

// ─── Tests ────────────────────────────────────────────────────────────────────

void main() {
  group('extendedFibonacci', () {
    test('base cases', () {
      expect(extendedFibonacci(0), 0);
      expect(extendedFibonacci(1), 1);
    });

    test('returns standard Fibonacci for positive n', () {
      expect(extendedFibonacci(2), 1);
      expect(extendedFibonacci(3), 2);
      expect(extendedFibonacci(4), 3);
      expect(extendedFibonacci(5), 5);
      expect(extendedFibonacci(6), 8);
      expect(extendedFibonacci(7), 13);
    });

    // For negative n, Dart's % on negative numbers always returns a
    // non-negative result when the divisor is positive, so:
    //   odd  negatives (n % 2 == 1): sign is +1 →  fib(-n)
    //   even negatives (n % 2 == 0): sign is -1 → -fib(-n)
    test('extends to negative indices with alternating sign', () {
      expect(extendedFibonacci(-1), 1);
      expect(extendedFibonacci(-2), -1);
      expect(extendedFibonacci(-3), 2);
      expect(extendedFibonacci(-4), -3);
      expect(extendedFibonacci(-5), 5);
    });
  });

  group('PaddedText', () {
    testWidgets('renders text content', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: PaddedText('hello'))),
      );
      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('applies 8px padding on all sides', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: PaddedText('padded'))),
      );
      final padding = tester.widget<Padding>(
        find
            .ancestor(
              of: find.text('padded'),
              matching: find.byType(Padding),
            )
            .first,
      );
      expect(padding.padding, const EdgeInsets.all(8.0));
    });

    testWidgets('applies custom style to text', (tester) async {
      const style = TextStyle(fontSize: 24);
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: PaddedText('styled', style: style)),
        ),
      );
      final text = tester.widget<Text>(find.text('styled'));
      expect(text.style, style);
    });
  });

  group('TextLink', () {
    testWidgets('renders text content', (tester) async {
      await tester.pumpWidget(buildWithTextLink(text: 'Open docs'));
      expect(find.text('Open docs'), findsOneWidget);
    });

    testWidgets('tooltip message is the URL', (tester) async {
      await tester.pumpWidget(buildWithTextLink(url: 'https://flutter.dev'));
      final tooltip = tester.widget<Tooltip>(find.byType(Tooltip));
      expect(tooltip.message, 'https://flutter.dev');
    });

    testWidgets('text is wrapped in an InkWell', (tester) async {
      await tester.pumpWidget(buildWithTextLink());
      expect(
        find.ancestor(
          of: find.text('Click me'),
          matching: find.byType(InkWell),
        ),
        findsOneWidget,
      );
    });

    testWidgets('InkWell has onTap and onLongPress handlers', (tester) async {
      await tester.pumpWidget(buildWithTextLink());
      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(inkWell.onTap, isNotNull);
      expect(inkWell.onLongPress, isNotNull);
    });

    testWidgets('long press copies URL to clipboard', (tester) async {
      final calls = mockClipboard(tester);
      await tester.pumpWidget(
        buildWithTextLink(url: 'https://example.com', text: 'Click me'),
      );

      await tester.longPress(find.text('Click me'));
      await tester.pump();

      expect(calls, hasLength(1));
      expect((calls.first.arguments as Map)['text'], 'https://example.com');
    });

    testWidgets('applies default blue color when no style is given',
        (tester) async {
      // Construct TextLink directly — buildWithTextLink always passes an
      // explicit color:, which would shadow the default Colors.blue value.
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (ctx) => Scaffold(
              body: TextLink(
                context: ctx,
                url: 'https://example.com',
                text: 'Click me',
              ),
            ),
          ),
        ),
      );
      final paddedText = tester.widget<PaddedText>(find.byType(PaddedText));
      expect(paddedText.style?.color, Colors.blue);
    });

    testWidgets('applies custom color', (tester) async {
      await tester.pumpWidget(buildWithTextLink(color: Colors.red));
      final paddedText = tester.widget<PaddedText>(find.byType(PaddedText));
      expect(paddedText.style?.color, Colors.red);
    });

    testWidgets('custom style overrides default color', (tester) async {
      const style = TextStyle(fontSize: 18, color: Colors.green);
      await tester.pumpWidget(buildWithTextLink(style: style));
      final paddedText = tester.widget<PaddedText>(find.byType(PaddedText));
      expect(paddedText.style, style);
    });
  });

  group('IconLink', () {
    testWidgets('renders the provided icon', (tester) async {
      await tester.pumpWidget(
        buildWithIconLink(icon: const Icon(Icons.star, key: Key('icon'))),
      );
      expect(find.byKey(const Key('icon')), findsOneWidget);
    });

    testWidgets('tooltip message is the URL', (tester) async {
      await tester.pumpWidget(buildWithIconLink(url: 'https://github.com'));
      final tooltip = tester.widget<Tooltip>(find.byType(Tooltip));
      expect(tooltip.message, 'https://github.com');
    });

    testWidgets('icon is wrapped in an InkWell', (tester) async {
      await tester.pumpWidget(
        buildWithIconLink(icon: const Icon(Icons.star, key: Key('icon'))),
      );
      expect(
        find.ancestor(
          of: find.byKey(const Key('icon')),
          matching: find.byType(InkWell),
        ),
        findsOneWidget,
      );
    });

    testWidgets('InkWell has onTap and onLongPress handlers', (tester) async {
      await tester.pumpWidget(buildWithIconLink());
      final inkWell = tester.widget<InkWell>(find.byType(InkWell));
      expect(inkWell.onTap, isNotNull);
      expect(inkWell.onLongPress, isNotNull);
    });

    testWidgets('long press copies URL to clipboard', (tester) async {
      final calls = mockClipboard(tester);
      await tester.pumpWidget(
        buildWithIconLink(
          url: 'https://github.com',
          icon: const Icon(Icons.star, key: Key('icon')),
        ),
      );

      await tester.longPress(find.byKey(const Key('icon')));
      await tester.pump();

      expect(calls, hasLength(1));
      expect((calls.first.arguments as Map)['text'], 'https://github.com');
    });
  });
}
