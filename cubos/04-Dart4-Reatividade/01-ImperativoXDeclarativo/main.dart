import './class/01-ClassApp.dart';
import './class/02-classCard.dart';
import './class/03-classCenter.dart';
import './class//04-classText.dart';

//Criação do estado4
String _state = "hello World";

//Atualização do estado
set state(String newValue) {
  print("\nBuild seguinte");
  _state = newValue;
  build();
}
//UI =F(state)
//APP -> Card -> Center ->Texto

void main() {
  print("PrimeiroBuild");
  build();

  //Alteracao (mutacao) do estado
  state = "Bye dart";
  state = "Hello Flutter";
}

//"f" -> Método de build
void build() {
  App(
    home: Card(
      child: Center(
        child: Text(_state),
      ),
    ),
  );
}
