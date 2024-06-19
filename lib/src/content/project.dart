import 'package:portfolio/src/content/technology.dart';

enum Platform { mobile, web, desktop }

final class Project {
  Project._(
    this.name, {
    required this.coverUrl,
    required this.repoUrl,
    required this.description,
    required this.screens,
    required this.technologies,
    required this.mainPlatform,
  });

  final String name;
  final String coverUrl;
  final String repoUrl;
  final String description;
  final List<String> screens;
  final List<Technology> technologies;
  final Platform mainPlatform;

  factory Project.rqp() => Project._(
        'Revisa Que Passa',
        coverUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/RQP%20cover.png',
        repoUrl:
            'https://github.com/CharlestonRibeiro/Portifolio?tab=readme-ov-file#2-rqp---revisa-que-passa',
        description:
            'O projeto RQP - Revisa Que Passa é uma aplicação móvel voltada para estudantes que desejam aprimorar seus estudos por meio da técnica de revisão espaçada, compartilhamento de cartões de estudo e interações sociais com outros estudantes. Este aplicativo oferece uma série de funcionalidades projetadas para melhorar a eficácia dos estudos e tornar a jornada de aprendizado mais interativa e envolvente.',
        screens: [
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/1.%20Home%20screen.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/2.%20Sign%20up.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/1.%20Login%20screen.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/3.%20Homescreen.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/4.%20Categories.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/5.%20Leaderboard.png',
          'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/projects/rqp/screens/6.%20Profile.png',
        ],
        technologies: [
          Technology.flutter(),
          Technology.cubit(),
          Technology.modular(),
        ],
        mainPlatform: Platform.mobile,
      );
}
