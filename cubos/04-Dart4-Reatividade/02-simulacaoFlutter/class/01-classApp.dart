class App {
  Object? home;

  App({this.home}) {
    print('App criado');
    if (home != null) {
      print("Card adicionado na tela");
    }
  }

  void add(Object child) {
    print("Card adicionado na Tela");
    home = child;
  }
}
