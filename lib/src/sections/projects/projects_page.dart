import 'package:flutter/material.dart';
import 'package:portfolio/src/content/project.dart';
import 'package:portfolio/src/sections/projects/components/project_card.dart';

final _projects = [Project.rqp()];

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gridElementWidth = MediaQuery.of(context).size.width * 0.2;
    final gridElementHeigth = gridElementWidth * 0.6;
    final hoverIndex = ValueNotifier(-1);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Projetos',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 40,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                ..._projects.map(
                  (e) => ProjectCard(
                    e,
                    index: _projects.indexOf(e),
                    heigth: gridElementHeigth,
                    width: gridElementWidth,
                    indexNotifier: hoverIndex,
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
