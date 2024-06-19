final class Developer {
  Developer._({
    required this.name,
    required this.imageUrl,
    this.role = 'Desenvolvedor Flutter',
    required this.about,
  });

  final String name;
  final String imageUrl;
  final String role;
  final String about;

  factory Developer.charleston() => Developer._(
        name: 'Charleston Ribeiro',
        imageUrl: 'https://avatars.githubusercontent.com/u/88972333?v=4',
        about:
            'Sou formado em Análise e Desenvolvimento de Sistemas pelo Instituto Federal de Rondônia - IFRO até o momento que entrei na faculdade só tive trabalhos braçais, justamente por esse motivo comecei minha vida acadêmica, já passei por estágio e projetos como bolsista, no momento estou fazendo freelancer para adquirir experiência.\nEstou iniciando na área de programação pelo Framework Flutter/Dart, tecnologia essa na qual estou me especializando por meio de bootcamps e cursos de formação online em empresas nacionalmente reconhecidas: Proz e Flutterando',
      );

  factory Developer.renata() => Developer._(
        name: 'Renata Sisilio',
        imageUrl: 'https://avatars.githubusercontent.com/u/112419444?v=4',
        role: 'Desenvolvedora Flutter',
        about:
            '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
      );
}
