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
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                Wrap(
                  spacing: 16,
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
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    textLink(
                      "https://pub.dev/packages/google_fonts",
                      "Google Fonts",
                    ),
                    textLink("https://pub.dev/packages/logging", "Logging"),
                    textLink("https://pub.dev/packages/hugeicons", "Hugeicons"),
                  ],
                ),
              ],
            ),
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
