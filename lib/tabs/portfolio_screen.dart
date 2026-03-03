import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/profile_pic.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        PortfolioCard(
          name: "Cloud Appreciation Society",
          subtitle: "Flutter, iOS, Android, Angular, Firebase",
        ),
      ],
    );
  }
}

class PortfolioCard extends StatelessWidget {
  final String name;
  final String? subtitle;

  final String? body;
  const PortfolioCard({
    super.key,
    required this.name,
    this.subtitle,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                AppIconImage(assetImage: 'assets/cas.jpeg'),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        subtitle ?? "Subtitle",
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              flex: 0,
              child: Text(
                body ??
                    "I was the lead full-stack engineer responsible for the International Cloud Appreciation Society's iOS and Android stack beginning in 2017. Their front end consisted of iOS and Android apps developed primarily with Flutter. We handled tabbed navigation using bloc, auth, photography and image storage, interactive widgets, and numerous api calls. \nWe developed the CMS dashboard with Angular.\nThe back end utilized Firebase Storage and Auth, Cloud Firestore, and Cloud Functions. We ",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
