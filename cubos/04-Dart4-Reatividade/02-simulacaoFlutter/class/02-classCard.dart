class Card {
  Object? child;
  String? _gravity;

  Card({this.child}) {
    print('Card criado');
    if (child != null) {
      print("Texto adicionado no Card");
      print("Texto no Card centralizado");
    }
  }

  void fillWith(Object newChild) {
    print("Texto adicionado no Card");
    child = newChild;
  }

  void setGravity(String newGravity) {
    print(" Texto no card Centradizado");
    _gravity = newGravity;
  }
}

class Gravity {
  static const center = "center";
}
