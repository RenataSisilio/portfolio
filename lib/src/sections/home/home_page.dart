import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/sections/home/components/dev_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DevInfo(Developer.charleston()),
        DevInfo(Developer.renata()),
      ],
    );
  }
}
