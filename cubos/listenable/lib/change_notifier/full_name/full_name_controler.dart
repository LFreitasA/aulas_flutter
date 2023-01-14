import 'package:flutter/material.dart';

class FullNameController extends ChangeNotifier {
  String _firstName = '';
  set firstName(String value) {
    _firstName = value;
    notifyListeners();
  }

  String _lastName = '';
  set lastName(String value) {
    _lastName = value;
    notifyListeners();
  }

  String get fullName => '$_firstName $_lastName';
}
