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
          body:
              "Cloud-a-Day is an AI-enabled, community reference app for the identification and sharing of images of more than forty types of atmospheric phenomena.\nI was the lead full-stack engineer responsible for the International Cloud Appreciation Society's iOS and Android stack beginning in 2017. Their front end consisted of iOS and Android apps developed primarily with Flutter. We handled tabbed and custom navigation using bloc, auth, photography and image storage, interactive widgets, and numerous API calls.\nWe developed the CMS dashboard with Angular.\nThe back end utilized Firebase Storage and Auth, Cloud Firestore, and Cloud Functions.",
        ),
        PortfolioCard(
          name: "KTArtistryPaints",
          subtitle: "Angular Web Storefront and Dashboard",
          assetImage: 'assets/KT_Artistry.png',
          semanticLabel:
              "KT Artistry's logo, an irregular, elegant design consisting of daubs of pink, purple, and grey paint as the background. The foreground consists of two golden hoops with the letters 'kt' in a large calligraphic font at the center and 'KAITLYN T. EMBURY-LAMM ARTISTRY LLC' smaller, around the perimeter.",
          body:
              "When Kaitlyn Embury commissioned an overhaul of her first website in 2016, I strove to create a beautiful, dynamic, responsive, storefront which preserved the look and feel of the origin while modernizing the underlying technology and design paradigm. The result was an Angular2 website with a responsive art gallery wall, integrated Google map location information, and a built-in CMS dashboard",
        ),
        PortfolioCard(
          name: "BenRussoMath",
          subtitle: "Vanilla HTML5 with Bootstrap",
          assetImage: 'assets/ben.png',
          semanticLabel:
              "a blue background with the letters 'BR' in negative space in a bookish, serif font.",
          body:
              "Upon receiving his Doctorate from the University of Florida, Ben Russo requested a portfolio/CV website. I aimed to create a simple, elegant, and responsive website which would allow him to easily update his CV and share his research. The result was a vanilla HTML5 website with Bootstrap styling. I deployed the site on GitHub Pages and set up a custom domain before handing the project over to Ben for maintenance.",
        ),
      ],
    );
  }
}
