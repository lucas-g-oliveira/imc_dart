// ignore: file_names
import 'dart:io';

String lerTerminal(String message) {
  print(message);
  return stdin.readLineSync()!;
}
