import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ShannonHeylmun.github.io/components/work_card.dart';
import 'package:ShannonHeylmun.github.io/helpers.dart';
import 'package:ShannonHeylmun.github.io/components/tab_scaffold.dart';
import 'package:ShannonHeylmun.github.io/components/work_row.dart';

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
            TextLink(url: "https://flutter.dev/", text: "Flutter"),
            TextLink(url: "https://dart.dev/", text: "Dart"),
            TextLink(url: "https://git-scm.com/", text: "Git"),
            TextLink(url: "https://angular.dev", text: "Angular"),
            TextLink(url: "https://firebase.google.com", text: "Firebase"),
            TextLink(url: "https://aws.amazon.com", text: "AWS"),
            TextLink(
              url: "https://www.typescriptlang.org/",
              text: "Typescript",
            ),
            TextLink(
              url: "https://developer.mozilla.org/en-US/docs/Web/HTML",
              text: "HTML",
            ),
            TextLink(url: "https://www.ruby-lang.org/en/", text: "Ruby"),
            TextLink(url: "https://sass-lang.com", text: "SASS"),
            TextLink(url: "https://getbootstrap.com", text: "Bootstrap"),
            TextLink(url: "tailwindcss.com/", text: "tailwindcss"),
            TextLink(url: "https://www.python.org/", text: "Python"),
            TextLink(url: "https://www.latex-project.org/", text: "LaTeX"),
            TextLink(url: "https://m3.material.io", text: "Material Design"),
            TextLink(
              url: "https://developer.apple.com/design/",
              text: "iOS Design",
            ),
            TextLink(
              url:
                  "https://www.interaction-design.org/literature/topics/responsive-design",
              text: "Responsive Design",
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
            ),
            TextLink(
              url:
                  "https://www.wise.live/blog/what-is-the-socratic-method-of-teaching/",
              text: "Socratic Tutoring",
            ),
            TextLink(
              url: "https://projecteuler.net/progress=s_heylmun",
              text: "Project Euler",
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
