import 'package:agendatelefonica/viewModels/contactViewModel.dart';
import 'package:flutter/material.dart';

class ContactGridTile extends StatelessWidget {
  const ContactGridTile(
      {super.key, required this.onItemPressed, required this.contactViewModel});

  final ContactViewModel contactViewModel;
  final VoidCallback onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: GridTile(
        child: Stack(
          children: [
            Container(
              color: contactViewModel.backgroundColor,
              alignment: Alignment.center,
              child: Text(
                contactViewModel.identifier,
                style: TextStyle(
                    color: contactViewModel.foregroundColor, fontSize: 24),
              ),
            ),
            if (contactViewModel.hasImage)
              Positioned.fill(
                child: Image(
                  image: contactViewModel.image!,
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
        footer: GridTileBar(
            backgroundColor: Colors.black26,
            title: Text(contactViewModel.name),
            subtitle: Text(contactViewModel.number),
            trailing: IconButton(
              icon: Icon(
                contactViewModel.favoriteIcon,
                color: contactViewModel.favoriteIconColor,
              ),
              onPressed: onItemPressed,
            )),
      ),
    );
  }
}
