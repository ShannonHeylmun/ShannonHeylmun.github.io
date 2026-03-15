import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ShannonHeylmun.github.io/components/tab_scaffold.dart';
import 'package:ShannonHeylmun.github.io/components/work_row.dart';
import 'package:ShannonHeylmun.github.io/helpers.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        WorkRow(text: "Built with"),
        Card(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical:
                      16 + min(constraints.maxWidth, constraints.maxHeight) / 8,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
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
                        // SizedIconLink(
                        //   link: "https://www.flaticon.com/free-icons/quotes",
                        //   icon: Image(image: AssetImage('assets/quote.png')),
                        // ),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        TextLink(
                          url: "https://pub.dev/packages/google_fonts",
                          text: "google_fonts",
                          context: context,
                        ),
                        TextLink(
                          url: "https://pub.dev/packages/logging",
                          text: "logging",
                          context: context,
                        ),
                        TextLink(
                          url: "https://pub.dev/packages/hugeicons",
                          text: "hugeicons",
                          context: context,
                        ),
                        TextLink(
                          url: "https://pub.dev/packages/flutter_svg",
                          text: "flutter_svg",
                          context: context,
                        ),
                        TextLink(
                          context: context,
                          url: "https://pub.dev/packages/prevent_orphan_text",
                          text: "prevent_orphan_text",
                        ),
                        // TextLink(
                        //   context: context,
                        //   url: "https://pub.dev/packages/expandable",
                        //   text: "expandable",
                        // ),
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
    return SizedBox(
      width: 64,
      height: 64,
      child: IconLink(url: link, icon: icon),
    );
  }
}
