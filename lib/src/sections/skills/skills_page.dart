import 'package:flutter/material.dart';
import 'package:portfolio/src/content/technology.dart';
import 'package:portfolio/src/sections/skills/components/technology_card.dart';

final _technologies = [
  Technology.flutter(),
  Technology.dart(),
  Technology.git(),
  Technology.firebase(),
  Technology.cubit(),
  Technology.modular(),
];

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gridElementHeight = MediaQuery.of(context).size.width * 0.1;
    final hoverIndex = ValueNotifier(-1);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tecnologias',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 80,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                ..._technologies.map(
                  (e) => TechnologyCard(
                    e,
                    indexNotifier: hoverIndex,
                    height: gridElementHeight,
                    index: _technologies.indexOf(e),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
