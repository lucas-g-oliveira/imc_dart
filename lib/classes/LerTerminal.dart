import 'dart:io';

import 'package:dart_imc/interfaces/IPessoa.dart' as pessoa;

class LerTerminal {
  final pessoa.PessoaInterface _pessoa;

  LerTerminal(this._pessoa);

  void nome() {
    print("Qual o seu nome? ");
    String? nome = stdin.readLineSync();
    _pessoa.setNome(nome!);
  }

  void peso() {
    print("Qual o seu peso? (Kg) ");
    String? peso = stdin.readLineSync();
    _pessoa.setPeso(peso!);
  }

  void altura() {
    print("Qual a sua altura? (metros) ");
    String? altura = stdin.readLineSync();
    _pessoa.setAltura(altura!);
  }
}
