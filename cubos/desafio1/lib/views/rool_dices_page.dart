import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../classes/Strings.dart';
import '../models/cancel_button.dart';
import '../models/generate_image_dices.dart';
import '../theme/dices_theme.dart';

class RoolDicesPage extends StatefulWidget {
  const RoolDicesPage(
      {super.key,
      required this.onCancel,
      required this.emptyImage,
      required this.numberSides});

  final VoidCallback onCancel;
  final String emptyImage;
  final int numberSides;

  @override
  State<RoolDicesPage> createState() => _RoolDicesPageState();
}

class _RoolDicesPageState extends State<RoolDicesPage> {
  String numeroSorteado = "?";
  void sortearDado(i) {
    Random numero = Random();
    int randonNumber = numero.nextInt(i);
    numeroSorteado = (randonNumber + 1).toString();
    setState(() {
      numeroSorteado;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: themeProvider.isDarkMode
                        ? MyColors.cardBackgroundColorDark
                        : MyColors.cardBackgroundColorLight,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    GenerateImageDices(
                        widget: widget, numeroSorteado: numeroSorteado),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 4.0, bottom: 11),
                              child: SizedBox(
                                width: 135,
                                height: 40,
                                child: TextButton(
                                  onPressed: numeroSorteado == "?"
                                      ? () {
                                          sortearDado(widget.numberSides);
                                        }
                                      : null,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        numeroSorteado == "?"
                                            ? MyColors.corRosa
                                            : MyColors.corCinzaFundoBotao),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 36)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    Strings.rollButton,
                                    style: TextStyle(
                                        color: numeroSorteado != "?"
                                            ? MyColors.corTextButtonAfterUsed
                                            : MyColors.corTextButtonBeforeUsed),
                                  ),
                                ),
                              ),
                            ),
                            CancelButton(widget: widget),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
