import 'package:flutter/material.dart';
import 'package:portfolio/src/content/project.dart';
import 'package:portfolio/src/functions/open_url.dart';

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
            onTap: () => openUrlInNewTab(project.repoUrl),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...project.technologies.map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: SizedBox.square(
                                      dimension: heigth * 0.15,
                                      child: Image.network(e.logoUrl),
                                    ),
                                  ),
                                ),
                              ],
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
