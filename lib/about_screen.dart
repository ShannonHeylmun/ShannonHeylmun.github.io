import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sh_portfolio/helpers.dart';
import 'package:sh_portfolio/tab_scaffold.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        ProfilePic(),
        Card(
          margin: EdgeInsets.all(16),
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
                      iconLink(
                        'https://www.linkedin.com/in/shannon-heylmun-1b98a747',
                        HugeIcon(icon: HugeIcons.strokeRoundedLinkedin01),
                      ),
                      iconLink(
                        "https://github.com/ShannonHeylmun",
                        HugeIcon(icon: HugeIcons.strokeRoundedGithub),
                      ),
                      GestureDetector(
                        child: HugeIcon(icon: HugeIcons.strokeRoundedMail01),
                        onTap: () => launchEmail('shannonheylmun@gmail.com'),
                      ),
                    ],
                  ),
                ),
                Text(
                  "I have been a full stack mobile and web developer for close to a decade. I began developing software when I was still pursuing a career in teaching mathematics. I have always believed that technology has tremeandous power to advance human understanding. My enthusiasm for computer engineering grew as I explored web technology and ultimately cross-platform mobile development. I pivoted from teaching to full-time development in 2017, becoming the lead developer for the International Cloud Appreciation Society. I have developed Flutter, Angular, and Vue frontends, worked with numberous Firebase and AWS back-end technologies, and delivered and maintained live apps to the Apple App Store and Google Play.",
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

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage('assets/sh_profile.jpeg')),
      ),
      child: AspectRatio(aspectRatio: 1),
    );
  }
}
