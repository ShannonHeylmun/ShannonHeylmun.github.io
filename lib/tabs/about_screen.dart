import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:prevent_orphan_text/prevent_orphan_text.dart';
import 'package:sh_portfolio/components/profile_pic.dart';
import 'package:sh_portfolio/helpers.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        ProfilePic(),
        Card(
          margin: EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              spacing: 16,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: Colors.orange),
                      bottom: BorderSide(width: 2.0, color: Colors.blue),
                    ),
                  ),

                  child: Wrap(
                    verticalDirection: VerticalDirection.down,
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      IconLink(
                        url:
                            'https://www.linkedin.com/in/shannon-heylmun-1b98a747',
                        icon: HugeIcon(icon: HugeIcons.strokeRoundedLinkedin01),
                      ),
                      IconLink(
                        url: "https://github.com/ShannonHeylmun",
                        icon: HugeIcon(icon: HugeIcons.strokeRoundedGithub),
                      ),
                      GestureDetector(
                        child: HugeIcon(icon: HugeIcons.strokeRoundedMail01),
                        onTap: () => launchEmail('shannonheylmun@gmail.com'),
                      ),
                    ],
                  ),
                ),
                PreventOrphanText(
                  "I have been a full stack mobile and web developer for close to a decade. I began developing software when I was still pursuing a career in teaching mathematics. I have always believed that technology has tremeandous power to advance human understanding and connection. My enthusiasm for computer engineering grew as I explored web technology and ultimately cross-platform mobile development. I pivoted from teaching to full-time development in 2017, becoming the lead developer for the International Cloud Appreciation Society. I have built Flutter, Angular, and Vue frontends, worked with numerous back-end technologies, and delivered and maintained live apps to Google Play & Apple App Stores. I am driven to create elegant, responsive, and accessible user experiences.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
