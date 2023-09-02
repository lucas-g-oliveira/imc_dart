import "dart:io";
import "package:dart_imc/classes/Pessoa.dart";
import 'package:dart_imc/classes/IMC.dart';

void main() {
  Pessoa maria = Pessoa(nome: "Maria");
  print(CalcularIMC(pessoa: maria).execute());
}
