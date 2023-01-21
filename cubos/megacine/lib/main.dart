import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:megacine/classes/strings.dart';
import 'package:megacine/pages/view_popular.dart';

import 'classes/app_colors.dart';
import 'pages/view_top_rated.dart';

void main() async {
  // ignore: await_only_futures
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  bool isDark = true;
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    void onSwitch(value) {
      setState(() {
        widget.isDark = !widget.isDark;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: AppColorsDark.textColor),
            title: Text(
              Strings.title,
              style: TextStyle(
                  color: AppColorsDark.textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColorsDark.backGroundColor,
            actions: [
              Switch.adaptive(
                  activeColor: AppColorsDark.textColor,
                  value: widget.isDark,
                  onChanged: ((value) {
                    widget.isDark = !widget.isDark;
                    setState(() {
                      widget.isDark;
                      value;
                      print("isDark = $widget.isDark");
                      print("value =$value");
                    });
                  }))
            ],
          ),
          backgroundColor: AppColorsDark.backGroundColor,
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        text: Strings.populars,
                      ),
                      Tab(
                        text: Strings.mostRated,
                      ),
                    ]),
                TabSelected(),
              ],
            ),
          )),
    );
  }
}

class TabSelected extends StatelessWidget {
  const TabSelected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(children: [ViewPopular(), ViewTopRate()]));
  }
}
