import 'package:flutter/material.dart';
import 'package:portfolio/src/content/project.dart';

class TechnologiesRow extends StatelessWidget {
  const TechnologiesRow({
    super.key,
    required this.project,
    required this.size,
  });

  final Project project;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...project.technologies.map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size * 0.5,
            ),
            child: Tooltip(
              message: e.name,
              child: SizedBox.square(
                dimension: size,
                child: Image.network(e.logoUrl),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
