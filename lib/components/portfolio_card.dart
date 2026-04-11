import 'package:ShannonHeylmun.github.io/helpers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ShannonHeylmun.github.io/components/app_icon_image.dart';
import 'package:flutter/services.dart';

class PortfolioCard extends StatelessWidget {
  final String name;
  final String? subtitle;
  final ExpandableController expandableController = ExpandableController(
    initialExpanded: true,
  );

  final String assetImage;
  final String body;
  final String? nameLink;

  final String? semanticLabel;
  PortfolioCard({
    super.key,
    required this.name,
    this.subtitle,
    required this.assetImage,
    required this.body,
    required this.semanticLabel,
    this.nameLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ExpandablePanel(
          controller: expandableController,
          theme: ExpandableThemeData(
            // hasIcon: false,
            // inkWellBorderRadius: BorderRadius.circular(16),
            useInkWell: false,
          ),
          collapsed: SizedBox.shrink(),
          header: Row(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIconImage(assetImage: assetImage),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    nameLink == null
                        ? Text(
                            name,
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        : InkWell(
                            child: Text(
                              name,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            onLongPress: () => nameLink != null
                                ? Clipboard.setData(
                                    ClipboardData(text: nameLink!),
                                  )
                                : null,
                            onTap: () =>
                                nameLink != null ? launchURL(nameLink!) : null,
                          ),
                    Text(
                      subtitle ?? "",
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          expanded: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              body,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
