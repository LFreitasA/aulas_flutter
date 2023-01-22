import 'package:desafio1/models/create_cards.dart';
import 'package:flutter/material.dart';
import 'package:desafio1/classes/row_dice.dart' as dice_list;

class SelectedNumberSides extends StatelessWidget {
  const SelectedNumberSides({Key? key, required this.onItemClicked})
      : super(key: key);

  final void Function(String, int) onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: dice_list.dicesList.length,
          itemBuilder: (context, index) {
            final list = dice_list.dicesList[index];
            return CreateCards(
              text: list.text,
              image: list.image,
              emptyImage: list.emptyImage,
              numberSides: list.numberSides,
              onItemClicked: onItemClicked,
            );
          }),
    );
  }
}
