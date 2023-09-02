import "dart:math";

import "package:dart_imc/interfaces/IPessoa.dart" as interfaces;

class CalcularIMC {
  interfaces.PessoaInterface? _pessoa;

  CalcularIMC({required interfaces.PessoaInterface pessoa}) {
    _pessoa = pessoa;
  }

  String execute() {
    String result = "";
    double imc = _pessoa!.getPeso() / pow(_pessoa!.getAltura(), 2);

    Map<String, double> values = {
      "Magreza grave": 16,
      "Magreza moderada": 17,
      "Magreza leve": 18.5,
      "Saudável": 25,
      "Sobrepeso": 30,
      "Obesidade Grau 1": 35,
      "Obesidade Grau 2 - Severa": 40,
    };

    if (imc > 40) {
      result = "Obesidade Grau 3 - Mórbida";
    } else {
      result = values.entries.where((e) => imc < e.value).first.key;
    }
    return "Nome: ${_pessoa!.getName()} - IMC: ${imc.toStringAsFixed(2)} - Situação: $result";
  }
}
