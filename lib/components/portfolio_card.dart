import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/app_icon_image.dart';

class PortfolioCard extends StatelessWidget {
  final String name;
  final String? subtitle;
  final ExpandableController expandableController = ExpandableController(
    initialExpanded: true,
  );

  final String assetImage;
  final String? body;

  final String? semanticLabel;
  PortfolioCard({
    super.key,
    required this.name,
    this.subtitle,
    required this.assetImage,
    this.body,
    required this.semanticLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ExpandablePanel(
          controller: expandableController,
          theme: ExpandableThemeData(hasIcon: true),
          collapsed: SizedBox.shrink(),
          header: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              AppIconImage(assetImage: assetImage),
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
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Flexible(
                flex: 0,
                child: Text(
                  body ??
                      "Cloud-a-Day is an AI-enabled, community reference app for the identification and sharing of images of more than forty types of atmospheric phenomena.\n I was the lead full-stack engineer responsible for the International Cloud Appreciation Society's iOS and Android stack beginning in 2017. Their front end consisted of iOS and Android apps developed primarily with Flutter. We handled tabbed navigation using bloc, auth, photography and image storage, interactive widgets, and numerous API calls. \nWe developed the CMS dashboard with Angular.\nThe back end utilized Firebase Storage and Auth, Cloud Firestore, and Cloud Functions.",
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
