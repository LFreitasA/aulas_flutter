class Text {
  String? _text;

  Text([this._text]) {
    print('Texto criado');
    if (_text != null) {
      print("Texto definido: $_text");
    }
  }

  void setText(String text) {
    _text = text;
    print("Texto definido: $_text");
  }
}
