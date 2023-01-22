import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/dices_theme.dart';

class CreateCards extends StatelessWidget {
  const CreateCards(
      {Key? key,
      required this.text,
      required this.image,
      required this.emptyImage,
      required this.onItemClicked,
      required this.numberSides})
      : super(key: key);
  final String text;
  final String image;
  final String emptyImage;
  final int numberSides;
  final void Function(String, int) onItemClicked;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
          color: themeProvider.isDarkMode
              ? MyColors.cardBackgroundColorDark
              : MyColors.cardBackgroundColorLight,
          border: Border.all(color: const Color(0x00f2f4f7)),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Text(text),
        leading: Image.asset(image),
        onTap: () {
          onItemClicked(emptyImage, numberSides);
        },
      ),
    );
  }
}
