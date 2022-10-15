import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MyStatefullText());
}

class MyStatelessText extends StatelessWidget {
  const MyStatelessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Não consigo me atualizar',
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class MyStatefullText extends StatefulWidget {
  const MyStatefullText({Key? key}) : super(key: key);

  @override
  State<MyStatefullText> createState() => _MyStatefullTextState();
}

class _MyStatefullTextState extends State<MyStatefullText> {
  int count = 0;
  String mensagem = "Clique uma vez para atualizar,";
  void updateCount() {
    setState(() {
      count++;
      print(count);
      alterarAMensagem();
    });
  }

  void diminuir() {
    setState(() {
      count--;
      print(count);
      alterarAMensagem();
    });
  }

  void alterarAMensagem() {
    if (count < 0) {
      setState(() {
        mensagem = "Voce não foi atualizado.";
      });
    } else {
      setState(() {
        mensagem = "$count";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: diminuir,
        onTap: updateCount,
        child: Center(
          child: Text(mensagem, textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}
