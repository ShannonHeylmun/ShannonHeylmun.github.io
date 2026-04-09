// import 'package:ShannonHeylmun.github.io/components/coming_soon.dart';
import 'package:ShannonHeylmun.github.io/components/coming_soon.dart';
import 'package:ShannonHeylmun.github.io/tabs/tab_icons.dart';
import 'package:ShannonHeylmun.github.io/tabs/about_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/credits_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/education_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/experience_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/portfolio_screen.dart';
import 'package:flutter/material.dart';

final TABS =
    [
          EducationTabIcon(),
          PortfolioTabIcon(),
          ExperienceTabIcon(),
          ContactTabIcon(),
          CreditsTabIcon(),
        ]
        .map(
          (icon) => Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: icon,
          ),
        )
        .toList();

const TAB_SCREENS = [
  EducationScreen(),
  PortfolioScreen(),
  // ComingSoon(
  //   title: "Portfolio",
  //   description: "My projects and work.",
  //   imageUrl: "",
  // ),
  ExperienceScreen(),
  AboutScreen(),
  CreditsScreen(),
];
