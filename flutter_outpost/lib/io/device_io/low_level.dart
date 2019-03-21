import 'dart:io';
import 'package:path_provider/path_provider.dart';
_read(String path) async {
  try {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$path');
    String text = await file.readAsString();
    print(text);
    return text;
  } catch (e) {
    print("Couldn't read file");
    return null;
  }
}
 
_save() async {
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/my_file.txt');
  final text = 'Hello World!';
  await file.writeAsString(text);
  print('saved');
  return 0;
}
