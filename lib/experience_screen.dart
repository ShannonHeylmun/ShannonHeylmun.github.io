import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sh_portfolio/components/work_card.dart';
import 'package:sh_portfolio/helpers.dart';
import 'package:sh_portfolio/tab_scaffold.dart';
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
            textLink("https://flutter.dev/", "Flutter"),
            textLink("https://dart.dev/", "Dart"),
            textLink("https://git-scm.com/", "Git"),
            textLink("https://angular.dev", "Angular"),
            textLink("https://firebase.google.com", "Firebase"),
            textLink("https://aws.amazon.com", "AWS"),
            textLink("https://www.typescriptlang.org/", "Typescript"),
            textLink(
              "https://developer.mozilla.org/en-US/docs/Web/HTML",
              "HTML",
            ),
            textLink("https://www.ruby-lang.org/en/", "Ruby"),
            textLink("https://sass-lang.com", "SASS"),
            textLink("https://getbootstrap.com", "Bootstrap"),
            textLink("https://www.python.org/", "Python"),
            textLink("https://www.latex-project.org/", "LaTeX"),
            textLink("https://m3.material.io", "Material Design"),
            textLink("https://developer.apple.com/design/", "iOS Design"),
            textLink(
              "https://www.interaction-design.org/literature/topics/responsive-design",
              "Responsive Design",
            ),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedTeaching),
          text: "Mathematics & Teaching",
        ),
        WorkCard(
          children: [
            textLink(
              "https://bokcenter.harvard.edu/flipped-classrooms",
              "Flipped Classroom",
            ),
            textLink(
              "https://www.wise.live/blog/what-is-the-socratic-method-of-teaching/",
              "Socratic Tutoring",
            ),
            Text("Elementary Algebra"),
            Text("Geometry"),
            Text("Trigonometry"),
            Text("Pre-Calculus"),
            Text("Calculus"),
            Text("Differential Equations"),
            Text("Statistics"),
            Text("Discrete Mathematics"),
            Text("Probability"),
            Text("Number Theory"),
            Text("Combinatorics"),
            Text("Sets & Logic"),
            Text("Elementary Graph Theory"),
            Text("Voting Theory"),
          ],
        ),
        WorkRow(
          iconWidget: HugeIcon(icon: HugeIcons.strokeRoundedAiInnovation03),
          text: "Interests & Hobbies",
        ),
        WorkCard(
          children: [
            textLink(
              "https://projecteuler.net/progress=s_heylmun",
              "Project Euler",
            ),
            Text("Mechanical Drafting"),
            Text("3D-printing"),
            Text("CNC"),
            Text("SCUBA"),
            Text("Portuguese"),
            Text("Catalan"),
            Text("Hungarian"),
            Text("Gardening"),
            Text("Animals"),
          ],
        ),
      ],
    );
  }
}
