import 'package:flutter/material.dart';
import '../classes/strings.dart';
import '../models/sport.dart';
import '../classes/images.dart';

class SportTab extends StatelessWidget {
  const SportTab({super.key, required this.sport});

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Image.network(
              sport.cover,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                return loadingProgress != null
                    ? const Center(child: CircularProgressIndicator())
                    : child;
              },
            )),
        const SizedBox(
          height: 15,
        ),
        Expanded(flex: 2, child: CardSession(theme, Strings.news)),
        const SizedBox(
          height: 15,
        ),
        Expanded(flex: 2, child: CardSession(theme, Strings.videos)),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Padding CardSession(ThemeData theme, String header) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            header,
            style: theme.textTheme.subtitle1,
          ),
          Expanded(
            child: Row(
              children: List.generate(4, (int index) {
                return Expanded(
                  child: Card(
                    child: Center(child: Text('$index')),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
