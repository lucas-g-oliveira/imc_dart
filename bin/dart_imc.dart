import "package:dart_imc/classes/LerTerminal.dart";
import "package:dart_imc/classes/Pessoa.dart";
import 'package:dart_imc/classes/IMC.dart';

void main() {
  Pessoa pessoa1 = Pessoa();

  LerTerminal(pessoa: pessoa1, read: Read.nome);
  LerTerminal(pessoa: pessoa1, read: Read.peso);
  LerTerminal(pessoa: pessoa1, read: Read.altura);

  print(CalcularIMC(pessoa: pessoa1).execute());
}
