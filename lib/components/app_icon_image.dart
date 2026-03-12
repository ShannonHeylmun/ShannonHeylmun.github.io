import 'package:flutter/material.dart';

class AppIconImage extends StatelessWidget {
  final String assetImage;
  final String? semanticLabel;
  const AppIconImage({super.key, required this.assetImage, this.semanticLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(assetImage)),
      ),
      child: Semantics(
        label: "An iOS-style 'icon' containing $semanticLabel",
        readOnly: true,
        container: true,
        child: AspectRatio(
          aspectRatio: 1,
          child: SizedBox(width: 100, height: 100),
        ),
      ),
    );
  }
}
