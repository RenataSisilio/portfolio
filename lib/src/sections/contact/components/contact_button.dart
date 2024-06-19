import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/functions/open_url.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends IconButton {
  const ContactButton._({required super.onPressed, required super.icon});

  factory ContactButton.fromType(ContactType type, String value) =>
      switch (type) {
        ContactType.email => ContactButton._email(value),
        ContactType.github => ContactButton._github(value),
        ContactType.linkedin => ContactButton._linkedin(value),
        ContactType.whatsapp => ContactButton._whatsapp(value),
        ContactType.discord => ContactButton._discord(value),
      };

  factory ContactButton._email(String email) => ContactButton._(
        onPressed: () => launchUrl(Uri(scheme: 'mailto', path: email)),
        icon: const Icon(Icons.mail_outline),
      );

  factory ContactButton._github(String github) => ContactButton._(
        onPressed: () => openUrlInNewTab(github),
        icon: const Icon(SimpleIcons.github),
      );

  factory ContactButton._linkedin(String linkedin) => ContactButton._(
        onPressed: () => openUrlInNewTab(linkedin),
        icon: const Icon(SimpleIcons.linkedin),
      );

  factory ContactButton._whatsapp(String number) => ContactButton._(
        onPressed: () => launchUrl(Uri.parse('https://wa.me/$number')),
        icon: const Icon(SimpleIcons.whatsapp),
      );

  factory ContactButton._discord(String discord) => ContactButton._(
        onPressed: () => launchUrl(
          Uri.parse(discord),
          mode: LaunchMode.externalApplication,
        ),
        icon: const Icon(SimpleIcons.discord),
      );
}
