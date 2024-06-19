import 'package:flutter/material.dart';
import 'package:portfolio/src/content/project.dart';
import 'package:portfolio/src/sections/projects/components/technologies_row.dart';

class ProjectDialog extends StatelessWidget {
  const ProjectDialog(this.project, {super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final imageWidth = MediaQuery.of(context).size.width / 6;
    return Dialog.fullscreen(
      insetAnimationDuration: Durations.medium4,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  project.name,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 20),
                TechnologiesRow(project: project, size: 40),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(project.description),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ...project.screens.map(
                      (e) => Image.network(e, width: imageWidth),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: Navigator.of(context).maybePop,
              hoverColor: Colors.transparent,
              icon: const Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
