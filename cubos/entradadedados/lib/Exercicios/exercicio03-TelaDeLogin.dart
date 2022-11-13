import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String usuario = "Leonardo";

  String senha = "Leonardo";

  final usuarioController = TextEditingController();

  final passwordController = TextEditingController();

  void showAlertDialog(BuildContext context) {
    String mensagem = validarCamposPreenchidos();
    showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(mensagem)),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("OK")),
              ),
            ],
          );
        });
  }

  String validarCamposPreenchidos() {
    String user = usuarioController.text;
    String password = passwordController.text;
    if (user.length == 0) {
      return "Informe o usuario";
    }
    if (password.length == 0) {
      return "Informe a senha";
    }
    if (user == usuario && password == senha) {
      return "Login realizado";
    } else {
      return "Usuario ou senha invalidos";
    }
  }

  bool notShowsPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 212),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(children: [
          Text("Login"),
          TextFormField(
              controller: usuarioController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(label: Text("usuario"))),
          TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: notShowsPassword,
              decoration: InputDecoration(
                  label: Text("Senha"),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          notShowsPassword = !notShowsPassword;
                        });
                      },
                      icon: notShowsPassword
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)))),
          Builder(builder: (context) {
            return TextButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text("Entrar"));
          })
        ]),
      ),
    );
  }
}
