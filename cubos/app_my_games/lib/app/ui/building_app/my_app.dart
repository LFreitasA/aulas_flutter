import 'package:app_my_games/app/ui/factory/app_factory.dart';
import 'package:app_my_games/app/ui/home/my_home_page.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const platform = "Android";
    return getApp(
        platform: platform,
        title: "Meu App de Games",
        home: const MyHomePage(platform: platform));
  }
}
