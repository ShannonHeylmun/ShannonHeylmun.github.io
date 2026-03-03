import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';
import 'package:sh_portfolio/components/work_row.dart';
import 'package:sh_portfolio/helpers.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        WorkRow(text: "Built with"),
        Card(
          margin: EdgeInsets.all(0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16 + min(constraints.maxWidth / 8, 100),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 32,
                  children: [
                    Row(
                      spacing: 16,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedIconLink(
                          link: "https://flutter.dev",
                          icon: SvgPicture.asset('assets/flutter_icon.svg'),
                        ),
                        SizedIconLink(
                          link: "https://docs.github.com/en/pages",
                          icon: HugeIcon(
                            icon: HugeIcons.strokeRoundedGithub01,
                            color: Color.fromRGBO(35, 41, 37, 1),
                          ),
                        ),
                        SizedIconLink(
                          link: "https://inkscape.org",
                          icon: SvgPicture.asset('assets/inkscape_logo.svg'),
                        ),
                        SizedIconLink(
                          link: "https://www.flaticon.com/free-icons/quotes",
                          icon: Image(image: AssetImage('assets/quote.png')),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 16,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        textLink(
                          "https://pub.dev/packages/google_fonts",
                          "google_fonts",
                        ),
                        textLink("https://pub.dev/packages/logging", "logging"),
                        textLink(
                          "https://pub.dev/packages/hugeicons",
                          "hugeicons",
                        ),
                        textLink(
                          "https://pub.dev/packages/flutter_svg",
                          "flutter_svg",
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SizedIconLink extends StatelessWidget {
  final String link;
  final Widget icon;
  final double? width;
  final double? height;
  const SizedIconLink({
    super.key,
    required this.link,
    required this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 64, height: 64, child: iconLink(link, icon));
  }
}
