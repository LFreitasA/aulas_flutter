import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
    required this.onThemeModePressed,
  }) : super(key: key);

  final VoidCallback onThemeModePressed;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final birthDateController = TextEditingController();
  bool obscureText = true;
  DateTime? selectedBirthDate;

  void showSignUpDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Strings.appName"),
          content: const Text("Strings.confirmationMessage"),
          actions: [
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('Não'),
            ),
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('Sim'),
            )
          ],
        );
      },
    );
  }

  void showBirthDatePicker() {
    final now = DateTime.now();
    final eighteenYearsAgo = DateTime(now.year - 18, now.month, now.day);
    showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      initialDate: selectedBirthDate ?? eighteenYearsAgo,
      lastDate: eighteenYearsAgo,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.year,
    ).then((selectedDate) {
      if (selectedDate != null) {
        selectedBirthDate = selectedDate;
        birthDateController.text =
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Strings.appName"),
        actions: [
          IconButton(
            onPressed: widget.onThemeModePressed,
            icon: Icon(
              theme.brightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          TextField(
            autofocus: true,
            decoration: buildInputDecoration("Strings.userName"),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: buildInputDecoration("Strings.email"),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10.0),
          TextField(
            obscureText: obscureText,
            decoration: buildInputDecoration("Strings.password").copyWith(
              suffixIcon: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () => setState(() {
                  obscureText = !obscureText;
                }),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: buildInputDecoration("Strings.fullName"),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: TextField(
                  controller: birthDateController,
                  readOnly: true,
                  decoration: buildInputDecoration("Strings.birthDate"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onTap: showBirthDatePicker,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                flex: 5,
                child: TextField(
                  decoration: buildInputDecoration("Strings.phone"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: showSignUpDialog,
            child: const Text("Strings.signUp"),
          )
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration(String label) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      labelText: label,
    );
  }
}
