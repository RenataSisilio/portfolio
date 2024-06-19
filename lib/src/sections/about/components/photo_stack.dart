import 'package:flutter/material.dart';

class PhotoStack extends StatelessWidget {
  const PhotoStack(this.photo, {super.key});

  final String photo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: -3.14 / 12.0,
          child: Container(
            color: Colors.blue,
            child: const SizedBox.square(
              dimension: 400,
            ),
          ),
        ),
        Image.network(photo),
      ],
    );
  }
}
