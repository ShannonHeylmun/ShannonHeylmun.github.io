import 'package:flutter/material.dart';

class AppIconImage extends StatelessWidget {
  final String assetImage;
  final String? semanticLabel;
  final double height;
  const AppIconImage({
    super.key,
    required this.assetImage,
    this.semanticLabel,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(2.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(2.0),
        ),

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
