import 'dart:io';

import 'package:dart_imc/interfaces/IPessoa.dart' as pessoa;

enum Read { nome, peso, altura }

class LerTerminal {
  late pessoa.PessoaInterface _pessoa;

  LerTerminal({required pessoa.PessoaInterface pessoa, required Read read}) {
    _pessoa = pessoa;
    Map<Read, Function> actions = {
      Read.peso: _peso,
      Read.nome: _nome,
      Read.altura: _altura,
    };
    actions[read]!();
  }

  void _nome() {
    print("Qual o seu nome? ");
    _pessoa.setNome(stdin.readLineSync()!);
  }

  void _peso() {
    print("Qual o seu peso? (Kg) ");
    _pessoa.setPeso(stdin.readLineSync()!);
  }

  void _altura() {
    print("Qual a sua altura? (cm) ");
    _pessoa.setAltura(stdin.readLineSync()!);
  }
}
