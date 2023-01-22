// ignore_for_file: file_names

import 'package:desafio1/views/rool_dices_page.dart';
import 'package:desafio1/views/selected_number_sides.dart';
import 'package:flutter/material.dart';

import '../models/button_elipses.dart';
import '../models/row_on_header.dart';
import 'app_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imageEmpty = "";
  int numberSides = 0;

  void onChangePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  void onClicked(
    image,
    number,
  ) {
    setState(() {
      imageEmpty = image;
      numberSides = number;
    });
    pageController.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void back() {
    pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  int currentPage = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const RowOnHeader(),
          AppHeader(currentPage: currentPage),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: onChangePage,
              controller: pageController,
              children: [
                SelectedNumberSides(onItemClicked: onClicked),
                RoolDicesPage(
                  onCancel: back,
                  emptyImage: imageEmpty,
                  numberSides: numberSides,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ButtonElipses(currentPage: currentPage),
    );
  }
}
