import 'package:flutter/material.dart';
import 'package:trabalhandocomabas/classes/images.dart';
import 'package:trabalhandocomabas/pages/calendarPage.dart';
import 'package:trabalhandocomabas/pages/profilePage.dart';
import 'package:trabalhandocomabas/pages/rankingPage.dart';
import 'package:trabalhandocomabas/pages/sportsPage.dart';
import 'classes/strings.dart';
import 'models/sport.dart';

class SportGym extends StatefulWidget {
  const SportGym({super.key, required this.onThemeModePressed});

  final VoidCallback onThemeModePressed;

  @override
  State<SportGym> createState() => _SportGymState();
}

class _SportGymState extends State<SportGym> {
  final pageController = PageController();
  int currentPage = 0;

  void onItemPressed(int index) {
    pageController.jumpToPage(index);
    /*pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );*/
    setState(() {
      currentPage = index;
    });
  }

  onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  final sports = const [
    Sport(
        name: Strings.futebol,
        icon: Icons.sports_football,
        cover: Images.football),
    Sport(
        name: Strings.basquete,
        icon: Icons.sports_basketball,
        cover: Images.basketball),
    Sport(
        name: Strings.hockey, icon: Icons.sports_hockey, cover: Images.hockey),
  ];
  /*final tabs = const [
    Tab(
      text: "Futebol",
      icon: Icon(Icons.sports_football),
    ),
    Tab(
      text: "Basquete",
      icon: Icon(Icons.sports_basketball),
    ),
    Tab(
      text: "Hockey",
      icon: Icon(Icons.sports_hockey),
    ),
  ];*/

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: sports.length,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.appName),
            actions: [
              IconButton(
                onPressed: widget.onThemeModePressed,
                icon: Icon(
                  theme.brightness == Brightness.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
              )
            ],
            bottom: currentPage == 0
                ? TabBar(
                    //isScrollable: true, //utilizar quando vamos ter varias abas
                    tabs: sports
                        .map((sport) => Tab(
                              icon: Icon(sport.icon),
                            ))
                        .toList(),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 20),

                    //indicatorColor: Colors.amber, //utilizado para colocar cor na barra de indicacao
                    //indicatorWeight: 12, //Grossura do indicador
                  )
                : null,
          ),
          body: PageView(
            physics: const NeverScrollableScrollPhysics(), //desabilita o scroll
            controller: pageController,
            onPageChanged: onPageChanged,
            children: [
              SportsPage(
                sports: sports,
              ),
              const RankingPage(),
              const CalendarPage(),
              const ProfilePage()
            ],
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 1,
            onPressed: () {},
            child: const Icon(Icons.share),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                currentIndex: currentPage,
                onTap: onItemPressed,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.sports), label: Strings.sports),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list), label: Strings.ranking),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_month),
                      label: Strings.calendar),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: Strings.profile),
                ]),
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
/*

          */