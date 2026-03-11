import 'package:flutter/material.dart';
import 'package:sh_portfolio/components/portfolio_card.dart';
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
          semanticLabel:
              "the Cloud-a-Day App's logo. In the style of decoupage, a figure in a red dress and leggings holds the hand of a smaller figure in brown pants and a grey-green shirt and points at the sky. They are standing on rolling green hills, and in the background four nimbostratus clouds block the sun from view as crepuscular rays radiate down from behind the largest onto an ocean nearly the same shade of blue as the sky.",
          assetImage: 'assets/cas.jpeg',
        ),
        PortfolioCard(
          name: "KTArtistryPaints.com",
          subtitle: "Angular Web Storefront and Dashboard",
          assetImage: 'assets/KT_artistry.png',
          semanticLabel:
              "KT Artistry's logo, an irregular, elegant design consisting of daubs of pink, purple, and grey paint as the background. The foreground consists of two golden hoops with the letters 'kt' in a large calligraphic font at the center and 'KAITLYN T. EMBURY-LAMM ARTISTRY LLC' smaller, around the perimeter.",
          body:
              "When Kaitlyn Embury commissioned an overhaul of her first website in 2016, I strove to create a beautiful, dynamic,responsive, storefront which preserved the look and feel of the origin while modernizing the underlying technology and design paradigm. The result was an Angular2 website with a responsive art gallery wall, integrated Google map location information, and a built-in CMS dashboard",
        ),
        PortfolioCard(
          name: "BenRussoMath.com",
          subtitle: "Vanilla HTML5 with Bootstrap",
          assetImage: 'assets/ben.png',
          semanticLabel:
              "a blue background with the letters 'BR' in negative space.",
          body:
              "Upon receiving his Doctorate from the University of Florida, Ben Russo requested a portfolio/CV website. ",
        ),
      ],
    );
  }
}
