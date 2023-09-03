import 'package:dart_imc/classes/IMC.dart';
import 'package:dart_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Verifica se é possível calcular o IMC com os imputs corretos', () {
    String frase(nome, imc, status) =>
        "Nome: $nome - IMC: $imc - Situação: $status";

    /* values = [[nome, altura, peso, expect], ...] */
    List values = [
      ["Sofia", "1.60", "40", frase("Sofia", "15.62", "Magreza grave")],
      ["Lucas", "1.75", "65", frase("Lucas", "21.22", "Saudável")],
      ["Isabella", "1.70", "80", frase("Isabella", "27.68", "Sobrepeso")],
      ["Mateus", "1.68", "90", frase("Mateus", "31.89", "Obesidade Grau 1")],
      ["Laura", "1.80", "110", frase("Laura", "33.95", "Obesidade Grau 1")],
      ["Enzo", "1.65", "55", frase("Enzo", "20.20", "Saudável")],
      ["Valentina", "1.78", "95", frase("Valentina", "29.98", "Sobrepeso")],
      ["Gabriel", "1.72", "75", frase("Gabriel", "25.35", "Sobrepeso")],
      [
        "Maria",
        "1.85",
        "160",
        frase("Maria", "46.75", "Obesidade Grau 3 - Mórbida")
      ],
      ["Pedro", "1.62", "52", frase("Pedro", "19.81", "Saudável")],
    ];

    for (var element in values) {
      Pessoa pessoa = Pessoa();
      pessoa.setNome(element[0]);
      pessoa.setAltura(element[1]);
      pessoa.setPeso(element[2]);

      expect(CalcularIMC(pessoa: pessoa).execute(), element[3]);
    }
  });
}
