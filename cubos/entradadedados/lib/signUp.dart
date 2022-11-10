import 'package:entradadedados/components/contactTile.dart';
import 'package:flutter/material.dart';

import 'resorces/Strings.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key, required this.onThemeModePressed});

  final VoidCallback onThemeModePressed;

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  bool obscureText = true;
  final birthDateControler = TextEditingController();
  DateTime? selectedBirthDate;
  bool emailChecked = false;
  bool phoneChecked = false;
  bool termsChecked = false;

  final birthDateFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final termFocusNode = FocusNode(descendantsAreFocusable: false);

  void showSignUpDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(Strings.appName)),
            content: Text(Strings.confirmationMessage),
            actions: [
              TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text(Strings.buttonYes)),
              TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text(Strings.buttonNo)),
            ],
          );
        });
  }

  void showBirthDatePicker() {
    final now = DateTime.now();
    final eighteenYearsAgo = DateTime(now.year - 18, now.month, now.day);
    print("object");
    showDatePicker(
            context: context,
            initialDate: selectedBirthDate ?? eighteenYearsAgo,
            firstDate: DateTime(1900),
            lastDate: eighteenYearsAgo,
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDatePickerMode: DatePickerMode.year)
        .then((selectedDate) {
      if (selectedDate != null) {
        selectedBirthDate = selectedDate;
        birthDateControler.text =
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        phoneFocusNode.requestFocus();
      }
    });
    birthDateFocusNode.unfocus();
  }

  @override
  void initState() {
    FocusManager.instance.highlightStrategy =
        FocusHighlightStrategy.alwaysTraditional;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        //permite ultrapassar a area segura, mas nao da scroll

        appBar: AppBar(
          title: const Text(Strings.appName),
          actions: [
            IconButton(
                onPressed: widget.onThemeModePressed,
                icon: Icon(theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              buildHeader(Strings.acessDate),
              TextField(
                decoration: buildInputDecoration(Strings.userName),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: buildInputDecoration(Strings.email),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: obscureText,
                decoration: buildInputDecoration(Strings.password).copyWith(
                    suffixIcon: ExcludeFocus(
                  child: IconButton(
                      onPressed: (() => setState(() {
                            obscureText = !obscureText;
                          })),
                      icon: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off)),
                )),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 18,
              ),
              buildHeader(Strings.personalInformation),
              TextField(
                decoration: buildInputDecoration(Strings.fullname),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Focus(
                      focusNode: birthDateFocusNode,
                      descendantsAreFocusable: false,
                      onFocusChange: (value) {
                        if (value) {
                          showBirthDatePicker();
                        }
                      },
                      child: TextField(
                        controller: birthDateControler,
                        readOnly: true,
                        decoration: buildInputDecoration(Strings.birthday),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        onTap: showBirthDatePicker,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      focusNode: phoneFocusNode,
                      decoration: buildInputDecoration(Strings.phone),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              buildHeader(Strings.contactMessage),
              ContactTile(
                  value: emailChecked,
                  onChanged: ((value) => setState(() {
                        emailChecked = value!;
                      })),
                  contactTile: Strings.email,
                  contactIcon: Icons.email),
              ContactTile(
                  value: phoneChecked,
                  onChanged: ((value) => setState(() {
                        phoneChecked = value!;
                      })),
                  contactTile: Strings.phone,
                  contactIcon: Icons.phone),
              SwitchListTile(
                  focusNode: termFocusNode,
                  contentPadding: const EdgeInsets.only(right: 8),
                  title: Text(
                    Strings.termsMessage,
                    style: theme.textTheme.subtitle2,
                  ),
                  value: termsChecked,
                  onChanged: (value) {
                    setState(() {
                      termsChecked = value;
                    });
                  }),
              ElevatedButton(
                  onPressed: showSignUpDialog, child: Text(Strings.signUp))
            ],
          ),
        ),
      ),
    );
  }

  void dipose() {
    birthDateControler.dispose();
    birthDateFocusNode.dispose();
    phoneFocusNode.dispose();
    termFocusNode.dispose();
    super.dispose();
  }

  Padding buildHeader(textHeader) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Text(
        textHeader,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }

  InputDecoration buildInputDecoration(String label) {
    return InputDecoration(border: OutlineInputBorder(), labelText: label);
  }
}
