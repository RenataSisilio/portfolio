final class Technology {
  Technology._(this.name, {required this.logoUrl, required this.docUrl});

  final String name;
  final String logoUrl;
  final String docUrl;

  factory Technology.flutter() => Technology._(
        'Flutter',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/flutter.webp',
        docUrl: 'https://flutter.dev/',
      );

  factory Technology.dart() => Technology._(
        'Dart',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/dart.png',
        docUrl: 'https://dart.dev/',
      );

  factory Technology.git() => Technology._(
        'Git',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/git.png',
        docUrl: 'https://git-scm.com/',
      );

  factory Technology.firebase() => Technology._(
        'Firebase',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/firebase.png',
        docUrl: 'https://firebase.google.com/',
      );

  factory Technology.cubit() => Technology._(
        'Cubit',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/cubit.png',
        docUrl: 'https://bloclibrary.dev/bloc-concepts/#cubit',
      );

  factory Technology.modular() => Technology._(
        'Modular',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/modular.png',
        docUrl: 'https://modular.flutterando.com.br/',
      );

  factory Technology.rest() => Technology._(
        'API Rest',
        logoUrl:
            'https://raw.githubusercontent.com/RenataSisilio/portfolio/main/images/technologies/api_rest.png',
        docUrl:
            'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwictPP-quiGAxV1D7kGHW8GD84QFnoECBYQAQ&url=https%3A%2F%2Fdocs.flutter.dev%2Fcookbook%2Fnetworking%2Ffetch-data&usg=AOvVaw04_JfzT4fv4pBbS7s83DSO&opi=89978449',
      );
}
