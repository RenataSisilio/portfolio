import 'package:flutter/material.dart';
import 'package:portfolio/src/content/project.dart';
import 'package:portfolio/src/sections/projects/components/project_dialog.dart';
import 'package:portfolio/src/sections/projects/components/technologies_row.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
    this.project, {
    super.key,
    required this.index,
    required this.heigth,
    required this.width,
    required this.indexNotifier,
  });

  final Project project;
  final double heigth;
  final double width;
  final ValueNotifier<int> indexNotifier;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth,
      width: width,
      child: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, value, child) {
          return InkWell(
            onHover: (value) => indexNotifier.value = value ? index : -1,
            onTap: () => showDialog(
              context: context,
              builder: (context) => ProjectDialog(project),
            ),
            child: Stack(
              children: [
                Image.network(project.coverUrl, fit: BoxFit.cover),
                indexNotifier.value == index
                    ? Container(
                        color: Colors.black87,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              project.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 20),
                            TechnologiesRow(
                              project: project,
                              size: heigth * 0.15,
                            ),
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          );
        },
      ),
    );
  }
}
