import "package:dart_imc/classes/LerTerminal.dart";
import "package:dart_imc/classes/Pessoa.dart";
import 'package:dart_imc/classes/IMC.dart';

void main() {
  Pessoa pessoa = Pessoa();
  LerTerminal(pessoa).nome();
  LerTerminal(pessoa).peso();
  LerTerminal(pessoa).altura();
  print(CalcularIMC(pessoa: pessoa).execute());
}
