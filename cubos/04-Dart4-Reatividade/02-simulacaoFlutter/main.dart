import './class/01-ClassApp.dart';
import './class/02-classCard.dart';
import './class/03-classCenter.dart';
import './class//04-classText.dart';

void main() {
  //*Imperativo
  print("Imperativo");
  final impText = Text();
  impText.setText("Hello world");
  final impCard = Card();
  impCard.fillWith(impText);
  impCard.setGravity(Gravity.center);
  final impApp = App();
  impApp.add(impCard);

  print("\n*****************************************\n ");
  print("Declarativo");
  App(
    home: Card(
      child: Center(
        child: Text("hello Word"),
      ),
    ),
  );
}
