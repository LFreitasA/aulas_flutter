// ignore: file_names
import 'dart:math';

import 'package:agendatelefonica/components/contactGridTile.dart';
import 'package:agendatelefonica/components/contactListTile.dart';
import 'package:agendatelefonica/resources/strings.dart';
import 'package:agendatelefonica/viewModels/contactViewModel.dart';
import 'package:flutter/material.dart';
import 'package:agendatelefonica/utils/contactHelper.dart' as contact_helper;

import 'models/contact.dart';

class PhoneBook extends StatefulWidget {
  const PhoneBook({super.key, required this.onThemeModePressed});

  final VoidCallback onThemeModePressed;

  @override
  State<PhoneBook> createState() => _PhoneBookState();
}

class _PhoneBookState extends State<PhoneBook> {
  final contacts = List<Contact>.from(contact_helper.longContactList)
    ..sort((a, b) => a.name.compareTo(b.name));

  bool isGrid = false;

  final favorites = <Contact>[];

  void toggleFavorite(Contact contact) {
    setState(() {
      if (contact.isFavorite) {
        favorites.remove(contact);
      } else {
        favorites.add(contact);
      }
      contact.isFavorite = !contact.isFavorite;
    });
  }

  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isGrid ? 2 : 1, childAspectRatio: isGrid ? 1 : 5);

  void toogleGridMode() {
    setState(() {
      isGrid = !isGrid;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(Strings.appName),
        actions: [
          IconButton(
            onPressed: toogleGridMode,
            icon: Icon(isGrid ? Icons.list : Icons.grid_on),
          ),
          IconButton(
              onPressed: widget.onThemeModePressed,
              icon: Icon(theme.brightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode)),
        ],
      ),
      body: contacts.isNotEmpty
          ? Column(
              children: [
                if (favorites.isNotEmpty) ...[
                  const Text(Strings.favotires),
                  Expanded(
                    flex: isGrid ? 3 : 1,
                    child: GridView.builder(
                        key: PageStorageKey(Strings.favotires),
                        gridDelegate: gridDelegate,
                        itemCount: favorites.length,
                        itemBuilder: (context, index) {
                          final contact = favorites[index];
                          return buildListTile(contact);
                        }),
                  ),
                ],
                Expanded(
                  flex: 6,
                  child: GridView.builder(
                    key: const PageStorageKey(Strings.funcionalidadeContacto),
                    gridDelegate: gridDelegate,
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      final contact = contacts[index];
                      return buildListTile(contact);
                    },
                  ),
                ),
              ],
            )
          : const Center(child: Text("Nenhum contato encontrado.")),
    );
  }

  Widget buildListTile(Contact contact) {
    final viewModel = ContactViewModel(contact);
    return isGrid
        ? ContactGridTile(
            onItemPressed: () => toggleFavorite(contact),
            contactViewModel: viewModel)
        : ContactListTile(
            contactViewModel: viewModel,
            onItensPressed: () => toggleFavorite(contact),
          );
  }
}
/*Container(
                  color: index % 2 == 0
                      ? theme.backgroundColor
                      : theme.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${contact.name} \n${contact.number}, '),
                  ),
                );*/