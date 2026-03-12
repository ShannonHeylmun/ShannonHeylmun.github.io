import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/app_icon_image.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppIconImage(
        assetImage: 'assets/sh_profile.jpeg',
        semanticLabel:
            "a black and white portrait of a white woman with long hair and bangs in front of still water. She is wearing a dark, collared shirt and a necklace.",
      ),
    );
  }
}
