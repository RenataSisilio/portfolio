import 'package:flutter/material.dart';
import 'package:portfolio/src/content/technology.dart';
import 'package:portfolio/src/functions/open_url.dart';

class TechnologyCard extends StatelessWidget {
  const TechnologyCard(
    this.technology, {
    super.key,
    required this.index,
    required this.height,
    required this.indexNotifier,
  });

  final Technology technology;
  final double height;
  final ValueNotifier<int> indexNotifier;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, value, child) {
        return InkWell(
          onHover: (value) => indexNotifier.value = value ? index : -1,
          onTap: () => openUrlInNewTab(technology.docUrl),
          hoverColor: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: height,
                child: Image.network(technology.logoUrl),
              ),
              AnimatedOpacity(
                duration: Durations.short4,
                opacity: indexNotifier.value == index ? 1 : 0,
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      technology.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
