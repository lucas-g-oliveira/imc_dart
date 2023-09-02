import 'package:dart_imc/classes/lerTerminal.dart';
import "package:dart_imc/classes/Pessoa.dart";
import 'package:dart_imc/classes/IMC.dart';

void main() {
  Pessoa pessoa1 = Pessoa();

  pessoa1.setNome(lerTerminal('Qual o seu nome?'));
  pessoa1.setPeso(lerTerminal('Qual o seu peso? (Kg)'));
  pessoa1.setAltura(lerTerminal('Qual a sua altura? (mertos)'));

  print(CalcularIMC(pessoa: pessoa1).execute());
}
