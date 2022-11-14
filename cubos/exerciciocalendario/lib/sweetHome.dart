import 'package:exerciciocalendario/classes/classeFuncionalidade.dart';
import 'package:exerciciocalendario/theme/theme.dart';
import 'package:provider/provider.dart';
import 'classes/listaDeFuncionalidades.dart' as listaFuncionalidades;
import 'package:flutter/material.dart';
import 'classes/strings.dart';
import 'main.dart';

class AplicativoSweetHome extends StatefulWidget {
  AplicativoSweetHome({super.key, required this.controlador});
  bool controlador;

  @override
  State<AplicativoSweetHome> createState() => _AplicativoSweetHomeState();
}

class _AplicativoSweetHomeState extends State<AplicativoSweetHome> {
  final funcionalidade =
      List<Funcionalidades>.from(listaFuncionalidades.listaDeFuncionalidades);
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool clicou = true;
    Color minhaCor = clicou ? Colors.green : Colors.grey;
    int contador = 0;

    void mudarACor() {
      setState(() {
        clicou = !clicou;
        print(clicou);
        minhaCor;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16,
          ),
          child: Column(
            children: [
              HeaderDaAplicacao(),
              Expanded(
                  child: GridView.builder(
                gridDelegate: gridDelegate,
                itemCount: funcionalidade.length,
                itemBuilder: (context, index) {
                  final functions = funcionalidade[index];
                  return GestureDetector(
                    onTap: () {
                      print(contador);
                      contador++;
                      mudarACor();
                    },
                    child: Card(
                      child: GridTile(
                          child: Stack(
                        children: [
                          Container(
                            color: minhaCor,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  functions.icone,
                                  Text(functions.titulo),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  );
                },
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  themeProvider.isDark ? Text("Dark Mode") : Text("Light Mode"),
                  ChangeThemeButtonWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderDaAplicacao extends StatelessWidget {
  const HeaderDaAplicacao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.home_outlined,
          size: 60,
        ),
        Column(
          children: [
            Text(
              Strings.titulo,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Text(Strings.subtitulo)
          ],
        )
      ],
    );
  }
}

class ChangeThemeButtonWidget extends StatelessWidget {
  ChangeThemeButtonWidget({super.key, required});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDark,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
