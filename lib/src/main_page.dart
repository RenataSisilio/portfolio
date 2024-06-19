import 'package:flutter/material.dart';

import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/sections/about/about_page.dart';
import 'package:portfolio/src/sections/contact/contact_page.dart';
import 'package:portfolio/src/sections/home/home_page.dart';
import 'package:portfolio/src/sections/projects/projects_page.dart';
import 'package:portfolio/src/sections/skills/skills_page.dart';
import 'package:portfolio/src/widgets/nav_bar.dart';

final _sections = {
  'Home': const HomePage(),
  'Charleston': AboutPage(Developer.charleston()),
  'Renata': AboutPage(Developer.renata(), side: Side.left),
  'Conhecimentos': const SkillsPage(),
  'Projetos': const ProjectsPage(),
  'Contato': const ContactPage(),
};

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    final sectionNames = [..._sections.keys];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: NavBar(
        controller: pageController,
        sectionNames: sectionNames,
      ),
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemCount: _sections.length,
        itemBuilder: (context, index) => _sections.values.elementAt(index),
      ),
    );
  }
}
