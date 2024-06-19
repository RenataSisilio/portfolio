import 'package:flutter/material.dart';
import 'package:portfolio/src/sections/about/about_page.dart';
import 'package:portfolio/src/sections/contact/contact_page.dart';
import 'package:portfolio/src/sections/home/home_page.dart';
import 'package:portfolio/src/sections/projects/projects_page.dart';
import 'package:portfolio/src/sections/skills/skills_page.dart';

final _sections = {
  'Home': const HomePage(),
  'Sobre nós': const AboutPage(),
  'Conhecimentos': const SkillsPage(),
  'Projetos': const ProjectsPage(),
  'Contato': const ContactPage(),
};

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          ..._sections.keys.map(
            (e) => TextButton(onPressed: () {}, child: Text(e)),
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _sections.length,
        itemBuilder: (context, index) => _sections.values.elementAt(index),
      ),
    );
  }
}
