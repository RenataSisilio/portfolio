import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';

class DevInfo extends StatelessWidget {
  const DevInfo(this.dev, {super.key});

  final Developer dev;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(dev.imageUrl),
          radius: 80,
        ),
        Text(
          dev.name,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(dev.role),
      ],
    );
  }
}
