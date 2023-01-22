import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/dices_theme.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({super.key, required});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      activeColor: MyColors.corRosa,
      activeTrackColor: MyColors.activeTrackColor,
      inactiveThumbColor: MyColors.corBranco,
      inactiveTrackColor: MyColors.inactiveTrackColor,
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
