import 'package:flutter/material.dart';
import 'package:listenable/change_notifier/full_name/full_name_controler.dart';

class FullNameEditor extends StatelessWidget {
  const FullNameEditor({Key? key, required this.controller}) : super(key: key);
  final FullNameController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Nome',
            ),
            onChanged: (value) => controller.firstName = value,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(labelText: 'Sobrenome'),
            onChanged: (value) => controller.lastName = value,
          )
        ],
      ),
    );
  }
}
