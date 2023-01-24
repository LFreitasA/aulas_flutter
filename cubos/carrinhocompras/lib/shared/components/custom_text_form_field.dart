import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final IconData icon;
  const CustomTextFormField(
      {required this.label,
      required this.onChanged,
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        prefix: Icon(icon),
        label: Text(label),
      ),
    );
  }
}
