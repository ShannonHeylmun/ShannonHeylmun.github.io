import 'package:flutter/material.dart';
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

Widget textLink(String url, String text, {Color color = Colors.blue}) {
  return InkWell(
    child: Text(text, style: TextStyle(color: color)),
    onTap: () => launchURL(url),
  );
}

Widget iconLink(String url, Widget icon) {
  return InkWell(child: icon, onTap: () => launchURL(url));
}

int extendedFibonacci(int n) {
  if (n >= 2) {
    return extendedFibonacci(n - 2) + extendedFibonacci(n - 1);
  } else {
    return n == 0 || n == 1 ? n : (n % 2 == 0 ? -1 : 1) * extendedFibonacci(-n);
  }
}
