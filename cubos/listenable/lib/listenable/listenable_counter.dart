import 'package:flutter/foundation.dart';

class ListenableCounter implements Listenable {
  VoidCallback? _listener;

  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    _listener?.call();
  }

  void decrement() {
    _value--;
    _listener?.call();
  }

  @override
  void addListener(VoidCallback listener) {
    _listener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _listener = null;
  }
}
