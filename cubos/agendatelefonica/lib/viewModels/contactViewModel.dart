import 'dart:math';

import 'package:agendatelefonica/models/contact.dart';
import 'package:flutter/material.dart';

class ContactViewModel {
  ContactViewModel(Contact contact)
      : name = contact.name,
        number = contact.number,
        favoriteIcon = contact.isFavorite ? Icons.star : Icons.star_outline,
        favoriteIconColor = contact.isFavorite ? Colors.pink : Colors.grey {
    final url = contact.picture;
    if (url != null) {
      hasImage = true;
      image = NetworkImage(url);
    }

    final materialColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];
    backgroundColor = materialColor.withOpacity(0.4);
    foregroundColor = materialColor.shade900;

    final names = contact.name.split(" ");
    identifier = names.first.characters.first + names.last.characters.first;
  }
  final String name;
  final String number;
  final IconData favoriteIcon;
  final Color favoriteIconColor;

  NetworkImage? image;
  bool hasImage = false;

  Color? backgroundColor;
  Color? foregroundColor;
  String identifier = "";
}
