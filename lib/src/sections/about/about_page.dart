import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/sections/about/components/dev_about_text.dart';
import 'package:portfolio/src/sections/about/components/photo_stack.dart';

enum Side { right, left }

class AboutPage extends StatelessWidget {
  const AboutPage(this.dev, {super.key, this.side = Side.right});

  final Developer dev;
  final Side side;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80),
      child: Row(
        children: side == Side.right
            ? [
                PhotoStack(dev.imageUrl),
                const SizedBox(width: 40),
                DevAboutText(dev),
              ]
            : [
                DevAboutText(dev),
                const SizedBox(width: 40),
                PhotoStack(dev.imageUrl),
              ],
      ),
    );
  }
}
