import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';

class DevAboutText extends StatelessWidget {
  const DevAboutText(this.dev, {super.key});

  final Developer dev;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dev.name,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 20),
          Text(dev.about),
        ],
      ),
    );
  }
}
