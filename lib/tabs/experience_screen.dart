import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sh_portfolio/components/work_card.dart';
import 'package:sh_portfolio/helpers.dart';
import 'package:sh_portfolio/components/tab_scaffold.dart';
import 'package:sh_portfolio/components/work_row.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScaffold(
      children: [
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedBriefcase01),
          text: "Full-Stack Development",
        ),
        WorkCard(
          children: [
            TextLink(
              url: "https://flutter.dev/",
              text: "Flutter",
              context: context,
            ),
            TextLink(url: "https://dart.dev/", text: "Dart", context: context),
            TextLink(
              url: "https://git-scm.com/",
              text: "Git",
              context: context,
            ),
            TextLink(
              url: "https://angular.dev",
              text: "Angular",
              context: context,
            ),
            TextLink(
              url: "https://firebase.google.com",
              text: "Firebase",
              context: context,
            ),
            TextLink(
              url: "https://aws.amazon.com",
              text: "AWS",
              context: context,
            ),
            TextLink(
              url: "https://www.typescriptlang.org/",
              text: "Typescript",
              context: context,
            ),
            TextLink(
              url: "https://developer.mozilla.org/en-US/docs/Web/HTML",
              text: "HTML",
              context: context,
            ),
            TextLink(
              url: "https://www.ruby-lang.org/en/",
              text: "Ruby",
              context: context,
            ),
            TextLink(
              url: "https://sass-lang.com",
              text: "SASS",
              context: context,
            ),
            TextLink(
              url: "https://getbootstrap.com",
              text: "Bootstrap",
              context: context,
            ),
            TextLink(
              url: "tailwindcss.com/",
              text: "tailwindcss",
              context: context,
            ),
            TextLink(
              url: "https://www.python.org/",
              text: "Python",
              context: context,
            ),
            TextLink(
              url: "https://www.latex-project.org/",
              text: "LaTeX",
              context: context,
            ),
            TextLink(
              url: "https://m3.material.io",
              text: "Material Design",
              context: context,
            ),
            TextLink(
              url: "https://developer.apple.com/design/",
              context: context,
              text: "iOS Design",
            ),
            TextLink(
              url:
                  "https://www.interaction-design.org/literature/topics/responsive-design",
              text: "Responsive Design",
              context: context,
            ),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedTeaching),
          text: "Mathematics Teaching",
        ),
        WorkCard(
          children: [
            PaddedText("Elementary Algebra"),
            PaddedText("Geometry"),
            PaddedText("Trigonometry"),
            PaddedText("Pre-Calculus"),
            PaddedText("Calculus"),
            PaddedText("Differential Equations"),
            PaddedText("Statistics"),
            PaddedText("Discrete Mathematics"),
            PaddedText("Probability"),
            PaddedText("Number Theory"),
            PaddedText("Combinatorics"),
            PaddedText("Set Theory"),
            PaddedText("Formal Logic"),
            PaddedText("Elementary Graph Theory"),
            PaddedText("Voting Theory"),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedAiInnovation03),
          text: "Interests & Hobbies",
        ),
        WorkCard(
          children: [
            TextLink(
              url:
                  "https://teaching.cornell.edu/teaching-resources/active-collaborative-learning/flipping-classroom",
              text: "Flipped Teaching",
              context: context,
            ),
            TextLink(
              url:
                  "https://www.wise.live/blog/what-is-the-socratic-method-of-teaching/",
              text: "Socratic Tutoring",
              context: context,
            ),
            TextLink(
              url: "https://projecteuler.net/progress=s_heylmun",
              text: "Project Euler",
              context: context,
            ),
            PaddedText("Mechanical Drafting"),
            PaddedText("3D-printing"),
            PaddedText("CNC"),
            PaddedText("SCUBA"),
            PaddedText("Portuguese"),
            PaddedText("Catalan"),
            PaddedText("Hungarian"),
            PaddedText("Gardening"),
            PaddedText("Animals"),
          ],
        ),
      ],
    );
  }
}
