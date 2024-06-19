final class Technology {
  Technology._({required this.logoUrl, required this.docUrl});

  final String logoUrl;
  final String docUrl;

  factory Technology.flutter() => Technology._(
        logoUrl:
            'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/logo_flutter_1080px_clr_Ov8UUHd.png',
        docUrl: 'https://flutter.dev/',
      );

  factory Technology.dart() => Technology._(
        logoUrl:
            'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/dart/dart.png',
        docUrl: 'https://dart.dev/',
      );

  factory Technology.git() => Technology._(
        logoUrl:
            'https://seeklogo.com/images/G/git-logo-CD8D6F1C09-seeklogo.com.png',
        docUrl: 'https://git-scm.com/',
      );

  factory Technology.firebase() => Technology._(
        logoUrl:
            'https://www.gstatic.com/devrel-devsite/prod/vcb16788a46369f41192d8988c5149cea86bddfebb91a7fb85ede926f44da4a35/firebase/images/touchicon-180.png',
        docUrl: 'https://firebase.google.com/',
      );
}
