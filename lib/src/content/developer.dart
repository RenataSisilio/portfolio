final class Developer {
  Developer._({
    required this.name,
    required this.imageUrl,
    this.role = 'Desenvolvedor Flutter',
  });

  final String name;
  final String imageUrl;
  final String role;

  factory Developer.charleston() => Developer._(
        name: 'Charleston Ribeiro',
        imageUrl: 'https://avatars.githubusercontent.com/u/88972333?v=4',
      );

  factory Developer.renata() => Developer._(
        name: 'Renata Sisilio',
        imageUrl: 'https://avatars.githubusercontent.com/u/112419444?v=4',
        role: 'Desenvolvedora Flutter',
      );
}
