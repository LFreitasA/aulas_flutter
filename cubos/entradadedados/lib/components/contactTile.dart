import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactTile extends StatefulWidget {
  const ContactTile(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.contactTile,
      required this.contactIcon});
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String contactTile;
  final IconData contactIcon;
  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  final focusNode = FocusNode(descendantsAreFocusable: false);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      focusNode: focusNode,
      dense: true,
      title: Text(widget.contactTile),
      secondary: Icon(widget.contactIcon),
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
