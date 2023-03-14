import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_adaptativo/factories/app_factory.dart';
import 'package:layout_adaptativo/factories/button_factory.dart';
import 'package:layout_adaptativo/factories/text_field_factory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final platform = "IOS";
    return getApp(
        title: "Ajuda",
        home: MyHomePage(platform: platform),
        platform: platform);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.platform});
  final platform;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Scaffold(
          appBar: platform == "IOS"
              ? null
              : AppBar(
                  title: Text("Ajuda"),
                ),
          body: LadoEsquerdo(
            platform: platform,
          ));
    });
  }
}

class LadoEsquerdo extends StatelessWidget {
  const LadoEsquerdo({super.key, required this.platform});
  final platform;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Column(
        children: [
          if (platform == "IOS")
            Container(
              color: Colors.amber,
              height: constrains.maxHeight * 0.05,
              width: constrains.maxWidth,
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: constrains.maxWidth / 2.5,
                  ),
                  Text("Ajudas")
                ],
              ),
            ),
          constrains.maxWidth < 600
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFieldFactory(platform: platform),
                        LegacyButton(platform: platform, buttonName: "Enviar")
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldFactory(platform: platform),
                            LegacyButton(
                                platform: platform, buttonName: "Enviar")
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 500,
                          width: 500,
                          child: Image.network(
                              "https://thumbs.dreamstime.com/z/help-wanted-vector-clip-art-31368648.jpg"),
                        ),
                      )
                    ],
                  ),
                )
        ],
      );
    });
  }
}
