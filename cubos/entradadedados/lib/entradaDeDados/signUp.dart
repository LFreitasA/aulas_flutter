import 'package:entradadedados/components/contactTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../resorces/Strings.dart';

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
  final userNameFocusNode = FocusNode();

  final emailRegex = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  final phoneMask = MaskTextInputFormatter(
      mask: '(##) # #### - ####', filter: {'#': RegExp(r'[0-9]')});
  void showSignUpDialog(BuildContext context) {
    showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(Strings.appName)),
            content: Text(Strings.confirmationMessage),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(Strings.buttonYes)),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(Strings.buttonNo)),
            ],
          );
        }).then((confirmedSignUp) {
      if (confirmedSignUp != null && confirmedSignUp) {
        bool emailChecked = false;
        bool phoneChecked = false;
        bool termsChecked = false;
        Form.of(context)?.reset();
        birthDateControler.clear();
        userNameFocusNode.requestFocus();

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(Strings.userSignUp)));
      }
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
    return Form(
      child: GestureDetector(
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
                TextFormField(
                  focusNode: userNameFocusNode,
                  decoration: buildInputDecoration(Strings.userName),
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: emptyValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: buildInputDecoration(Strings.email),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: emailValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    obscureText: obscureText,
                    decoration: buildInputDecoration(Strings.password).copyWith(
                        helperText: Strings.passwordHelper,
                        suffixIcon: ExcludeFocus(
                          child: IconButton(
                              onPressed: (() => setState(() {
                                    obscureText = !obscureText;
                                  })),
                              icon: Icon(obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        )),
                    inputFormatters: [LengthLimitingTextInputFormatter(16)],
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: passwordValidate),
                SizedBox(
                  height: 18,
                ),
                buildHeader(Strings.personalInformation),
                TextFormField(
                  decoration: buildInputDecoration(Strings.fullname),
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: fullNameValidator,
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
                        child: TextFormField(
                          controller: birthDateControler,
                          readOnly: true,
                          decoration: buildInputDecoration(Strings.birthday),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          onTap: showBirthDatePicker,
                          validator: emptyValidator,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        focusNode: phoneFocusNode,
                        decoration: buildInputDecoration(Strings.phone),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [phoneMask],
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: phoneValidator,
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
                FormField(
                  validator: (_) {
                    if (!termsChecked) {
                      return Strings.errorMessageNotAceptTerms;
                    }
                  },
                  builder: (formFieldState) {
                    final errorText = formFieldState.errorText;
                    return SwitchListTile(
                        focusNode: termFocusNode,
                        contentPadding: const EdgeInsets.only(right: 8),
                        title: Text(
                          Strings.termsMessage,
                          style: theme.textTheme.subtitle2,
                        ),
                        subtitle: errorText != null
                            ? Text(errorText,
                                style: theme.textTheme.bodyText2
                                    ?.copyWith(color: theme.errorColor))
                            : null,
                        value: termsChecked,
                        onChanged: (value) {
                          setState(() {
                            termsChecked = value;
                          });
                        });
                  },
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () {
                        final formState = Form.of(context);
                        if (formState != null && formState.validate()) {
                          showSignUpDialog(context);
                        }
                      },
                      child: Text(Strings.signUp));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? phoneValidator(phone) {
    final emptyError = emptyValidator(phone);
    if (emptyError == null && phone != null) {
      final phoneDigits = phoneMask.unmaskText(phone);
      if (phoneDigits.length < 11) {
        return Strings.errorMessageInvalidPhone;
      }
    }
    return emptyError;
  }

  String? fullNameValidator(fullName) {
    final emptyError = emptyValidator(fullName);
    if (emptyError == null && fullName != null) {
      if (fullName.split(' ').length == 1) {
        return Strings.errorMessageFullName;
      }
    } else {
      return Strings.errorMessage;
    }
  }

  String? passwordValidate(password) {
    final emptyError = emptyValidator(password.toString());
    if (emptyError == null && password.toString() != null) {
      if (password.toString().length < 8) {
        return Strings.passwordHelper;
      }
    }
    print(password.toString().length);
    if (password.toString().isEmpty) return Strings.errorMessage;
  }

  String? emailValidator(email) {
    final emptyError = emptyValidator(email);
    if (emptyError == null && email != null) {
      if (!emailRegex.hasMatch(email)) {
        return Strings.errorMessageInvalidEmail;
      }
    } else {
      return Strings.errorMessage;
    }
  }

  String? emptyValidator(String? text) {
    if (text == null || text.isEmpty) {
      return Strings.errorMessage;
    }
  }

  void dipose() {
    birthDateControler.dispose();
    birthDateFocusNode.dispose();
    phoneFocusNode.dispose();
    termFocusNode.dispose();
    userNameFocusNode.dispose();
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
