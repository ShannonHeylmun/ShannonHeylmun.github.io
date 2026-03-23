// import 'package:ShannonHeylmun.github.io/components/coming_soon.dart';
import 'package:ShannonHeylmun.github.io/components/coming_soon.dart';
import 'package:ShannonHeylmun.github.io/tabs/tab_icons.dart';
import 'package:ShannonHeylmun.github.io/tabs/about_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/credits_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/education_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/experience_screen.dart';
import 'package:ShannonHeylmun.github.io/tabs/portfolio_screen.dart';

const TABS = [
  EducationTabIcon(),
  PortfolioTabIcon(),
  ExperienceTabIcon(),
  ContactTabIcon(),
  CreditsTabIcon(),
];

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
