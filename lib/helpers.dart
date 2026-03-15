import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url, {bool isNewTab = true}) async {
  Uri url0 = Uri.parse(url);
  if (!await launchUrl(
    url0,
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  )) {
    throw Exception('Could not launch $url0');
  }
}

Future<void> launchEmail(String email) async {
  Uri params = Uri(scheme: 'mailTo', path: email);
  if (await canLaunchUrl(params)) {
    await launchUrl(params);
  } else {
    print('Could not launch $email');
  }
}

class TextLink extends StatelessWidget {
  final String url;
  final String text;
  final Color? color;
  final BuildContext context;

  const TextLink({
    super.key,
    required this.context,
    required this.url,
    required this.text,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchURL(url),
      onLongPress: () {
        Feedback.forLongPress(context);
        Clipboard.setData(ClipboardData(text: url));
      },
      enableFeedback: true,
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: PaddedText(text, style: TextStyle(color: color)),
    );
  }
}

class IconLink extends StatelessWidget {
  final String url;
  final Widget icon;
  const IconLink({super.key, required this.url, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchURL(url),
      onLongPress: () {
        Feedback.forLongPress(context);
        Clipboard.setData(ClipboardData(text: url));
      },
      enableFeedback: true,
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: icon,
    );
  }
}

class PaddedText extends StatelessWidget {
  const PaddedText(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, style: style),
    );
  }
}

int extendedFibonacci(int n) {
  if (n >= 2) {
    return extendedFibonacci(n - 2) + extendedFibonacci(n - 1);
  } else {
    return n == 0 || n == 1 ? n : (n % 2 == 0 ? -1 : 1) * extendedFibonacci(-n);
  }
}
