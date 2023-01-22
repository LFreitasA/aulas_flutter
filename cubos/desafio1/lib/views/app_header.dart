import 'package:desafio1/views/shows_header.dart';
import 'package:flutter/material.dart';

import '../classes/Strings.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.currentPage});
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShowsHeader(),
          const SizedBox(height: 28),
          Text(
            currentPage == 0 ? Strings.textHeader : Strings.rollDiceMessage,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'roboto'),
          ),
        ],
      ),
    );
  }
}
