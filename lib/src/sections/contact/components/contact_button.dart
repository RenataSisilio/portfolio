import 'package:flutter/material.dart';
import 'package:portfolio/src/content/developer.dart';
import 'package:portfolio/src/functions/open_url.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends IconButton {
  const ContactButton._({
    required super.onPressed,
    required super.icon,
    super.color,
  });

  factory ContactButton.fromType(ContactType type, String value,
          {Color? color}) =>
      switch (type) {
        ContactType.email => ContactButton._email(value, color: color),
        ContactType.github => ContactButton._github(value, color: color),
        ContactType.linkedin => ContactButton._linkedin(value, color: color),
        ContactType.whatsapp => ContactButton._whatsapp(value, color: color),
        ContactType.discord => ContactButton._discord(value, color: color),
      };

  factory ContactButton._email(String email, {Color? color}) => ContactButton._(
        onPressed: () => launchUrl(Uri(scheme: 'mailto', path: email)),
        icon: const Icon(SimpleIcons.gmail),
        color: color,
      );

  factory ContactButton._github(String github, {Color? color}) =>
      ContactButton._(
        onPressed: () => openUrlInNewTab(github),
        icon: const Icon(SimpleIcons.github),
        color: color,
      );

  factory ContactButton._linkedin(String linkedin, {Color? color}) =>
      ContactButton._(
        onPressed: () => openUrlInNewTab(linkedin),
        icon: const Icon(SimpleIcons.linkedin),
        color: color,
      );

  factory ContactButton._whatsapp(String number, {Color? color}) =>
      ContactButton._(
        onPressed: () => launchUrl(Uri.parse('https://wa.me/$number')),
        icon: const Icon(SimpleIcons.whatsapp),
        color: color,
      );

  factory ContactButton._discord(String discord, {Color? color}) =>
      ContactButton._(
        onPressed: () => launchUrl(
          Uri.parse(discord),
          mode: LaunchMode.externalApplication,
        ),
        icon: const Icon(SimpleIcons.discord),
        color: color,
      );
}
