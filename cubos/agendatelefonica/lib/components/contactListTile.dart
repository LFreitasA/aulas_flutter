import 'package:agendatelefonica/viewModels/contactViewModel.dart';
import 'package:flutter/material.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile(
      {super.key,
      required this.contactViewModel,
      required this.onItensPressed});

  final ContactViewModel contactViewModel;
  final VoidCallback onItensPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contactViewModel.name),
        subtitle: Text(contactViewModel.number),
        leading: CircleAvatar(
          foregroundImage: contactViewModel.image,
          backgroundColor: contactViewModel.backgroundColor,
          foregroundColor: contactViewModel.foregroundColor,
          child: Text(contactViewModel.identifier),
        ),
        trailing: IconButton(
          icon: Icon(
            contactViewModel.favoriteIcon,
            color: contactViewModel.favoriteIconColor,
          ),
          onPressed: onItensPressed,
        ),
      ),
    );
  }
}
