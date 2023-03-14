import 'package:layout_adaptativo/aula/entities/android_dialog.dart';
import 'package:layout_adaptativo/aula/entities/custom_dialog.dart';
import 'package:layout_adaptativo/aula/entities/ios_dialog.dart';
import 'package:layout_adaptativo/aula/entities/windows_dialog.dart';

CustomDialog getCustomDialog({required String platform}) => platform == "IOS"
    ? IosDialog()
    : platform == "windows"
        ? WindowsDialog()
        : AndroidDialog();
