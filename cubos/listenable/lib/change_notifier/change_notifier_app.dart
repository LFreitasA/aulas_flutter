import 'package:flutter/material.dart';
import 'package:listenable/change_notifier/full_name/full_name_controler.dart';

import 'full_name/full_name.dart';
import 'full_name/full_name_editor.dart';

class ChangeNotifierApp extends StatelessWidget {
  ChangeNotifierApp({Key? key}) : super(key: key);
  final FullNameController controller = FullNameController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FullName(
          controller: controller,
        ),
      ),
      body: FullNameEditor(
        controller: controller,
      ),
    );
  }
}
