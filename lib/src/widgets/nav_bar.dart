import 'package:flutter/material.dart';

class NavBar extends AppBar {
  NavBar({
    super.key,
    required this.sectionNames,
    required this.controller,
  }) : super(
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          actions: [
            ...sectionNames.map(
              (e) => TextButton(
                onPressed: () => controller.animateToPage(
                  sectionNames.indexOf(e),
                  duration: Durations.long4,
                  curve: Curves.easeOut,
                ),
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, _) {
                    return Text(
                      e,
                      style: TextStyle(
                        fontWeight: !controller.hasClients ||
                                controller.page != sectionNames.indexOf(e)
                            ? FontWeight.normal
                            : FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );

  final List<String> sectionNames;
  final PageController controller;
}
