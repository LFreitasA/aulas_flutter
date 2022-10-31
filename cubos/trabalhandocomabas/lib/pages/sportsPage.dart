import 'package:flutter/material.dart';
import 'package:trabalhandocomabas/models/sport.dart';
import 'package:trabalhandocomabas/tabs/sportTabs.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key, required this.sports});

  final List<Sport> sports;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        for (final sport in sports) SportTab(sport: sport),
      ],
    );
  }
}
