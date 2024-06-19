import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/sections/contact/components/contact_button.dart';

class DevContact extends StatelessWidget {
  const DevContact(this.dev, {super.key});

  final Developer dev;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          foregroundImage: NetworkImage(dev.imageUrl),
        ),
        const SizedBox(height: 12),
        Text(
          dev.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...dev.contact.entries.map(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ContactButton.fromType(e.key, e.value),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
