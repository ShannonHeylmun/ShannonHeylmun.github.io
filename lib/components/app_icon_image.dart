import 'package:flutter/material.dart';

class AppIconImage extends StatelessWidget {
  final String? assetImage;
  const AppIconImage({super.key, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(assetImage ?? 'assets/sh_profile.jpeg'),
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: SizedBox(width: 100, height: 100),
      ),
    );
  }
}
