import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class SaveImageLocally {
  static Future<void> downloadFile(String url, String filename) async {
    try {
      final status = await Permission.manageExternalStorage.status;

      if (status.isDenied) {
        await Permission.manageExternalStorage.request();
      }

      HttpClient httpClient = HttpClient();
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();

      var bytes = await consolidateHttpClientResponseBytes(response);
      final dir = (await getExternalStorageDirectory())?.path;

      File file = File('$dir/$filename.png');
      await file.writeAsBytes(bytes);
      await OpenFile.open('$dir/$filename.png');
    } catch (e) {
      print(e);
    }
  }
}
