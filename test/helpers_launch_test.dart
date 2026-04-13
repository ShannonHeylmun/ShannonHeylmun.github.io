import 'package:flutter_test/flutter_test.dart';
import 'package:url_launcher_platform_interface/link.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:ShannonHeylmun.github.io/helpers.dart';

// ─── Mock ─────────────────────────────────────────────────────────────────────

class _MockUrlLauncher extends UrlLauncherPlatform {
  final bool canLaunchResult;
  final bool launchResult;

  _MockUrlLauncher({required this.canLaunchResult, required this.launchResult});

  @override
  LinkDelegate? get linkDelegate => null;

  @override
  Future<bool> canLaunch(String url) async => canLaunchResult;

  @override
  Future<bool> launchUrl(String url, LaunchOptions options) async =>
      launchResult;
}

void _setMock({required bool canLaunch, required bool launch}) {
  UrlLauncherPlatform.instance = _MockUrlLauncher(
    canLaunchResult: canLaunch,
    launchResult: launch,
  );
}

// ─── Tests ────────────────────────────────────────────────────────────────────

void main() {
  group('launchURL', () {
    test('completes when the platform reports a successful launch', () async {
      _setMock(canLaunch: true, launch: true);
      await expectLater(launchURL('https://example.com'), completes);
    });

    test('completes with isNewTab: false when launch succeeds', () async {
      _setMock(canLaunch: true, launch: true);
      await expectLater(
        launchURL('https://example.com', isNewTab: false),
        completes,
      );
    });

    test('throws Exception when the platform cannot launch the URL', () async {
      _setMock(canLaunch: true, launch: false);
      await expectLater(
        launchURL('https://example.com'),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Could not launch'),
          ),
        ),
      );
    });

    test('throws with isNewTab: true when launch fails', () async {
      _setMock(canLaunch: true, launch: false);
      await expectLater(
        launchURL('https://example.com', isNewTab: true),
        throwsA(isA<Exception>()),
      );
    });

    test('throws with isNewTab: false when launch fails', () async {
      _setMock(canLaunch: true, launch: false);
      await expectLater(
        launchURL('https://example.com', isNewTab: false),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('launchEmail', () {
    test('launches when canLaunch returns true', () async {
      _setMock(canLaunch: true, launch: true);
      await expectLater(launchEmail('test@example.com'), completes);
    });

    test('completes without throwing when canLaunch returns false', () async {
      _setMock(canLaunch: false, launch: false);
      await expectLater(launchEmail('test@example.com'), completes);
    });
  });
}
