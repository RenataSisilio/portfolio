import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/sections/contact/components/dev_contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contato',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DevContact(Developer.charleston()),
            DevContact(Developer.renata()),
          ],
        ),
      ],
    );
  }
}
