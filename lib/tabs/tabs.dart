import 'package:sh_portfolio/tabs/tab_icons.dart';
import 'package:sh_portfolio/tabs/about_screen.dart';
import 'package:sh_portfolio/tabs/credits_screen.dart';
import 'package:sh_portfolio/tabs/education_screen.dart';
import 'package:sh_portfolio/tabs/experience_screen.dart';
import 'package:sh_portfolio/tabs/portfolio_screen.dart';

const TABS = [
  EducationTabIcon(),
  // PortfolioTabIcon(),
  ExperienceTabIcon(),
  ContactTabIcon(),
  // CreditsTabIcon(),
];

const TAB_SCREENS = [
  EducationScreen(),
  // PortfolioScreen(),
  ExperienceScreen(),
  AboutScreen(),
  // CreditsScreen(),
];
