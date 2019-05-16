import 'dart:io';
import 'package:path_provider/path_provider.dart';

_read(String path) async {
  try {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$path');
    String text = await file.readAsString();
    //print(text);
    return text;
  } catch (e) {
    //print("Couldn't read file");
    return null;
  }
}

_save(String jsonText, String filePath) async {
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/filePath');
  await file.writeAsString(jsonText);
  //print('saved');
  return 0;
}
