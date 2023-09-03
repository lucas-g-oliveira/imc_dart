import 'package:dart_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test(
      'Verifica se a exceção correta é lançada caso receba Pessoa.setNome() receba um nome inválido',
      () {
    /* nomes = [[nome, expect], ...] */
    List nomes = [
      ["ju", "'nome' precisa ter ao menos 3 letras!"],
      ["", "'nome' precisa ter ao menos 3 letras!"],
    ];

    for (var name in nomes) {
      Pessoa pessoa = Pessoa();
      expect(
          () => pessoa.setNome(name[0]), throwsA(TypeMatcher<ArgumentError>()));
    }
  });

  test(
      'Verifica se a exceção correta é lançada caso Pessoa.setAltura() receba um valor inválido',
      () {
    /* alturas = [[ altura, expect], ...] */
    List alturas = [
      ["0.00", "'Altura' precisa ser maior que '0'!"],
      [" ", "O valor de entarda para a 'altura' é inválido"],
      ["-5", "'Altura' precisa ser maior que '0'!"],
    ];

    for (var value in alturas) {
      Pessoa pessoa = Pessoa();
      expect(() => pessoa.setAltura(value[0]),
          throwsA(TypeMatcher<ArgumentError>()));
    }
  });

  test(
      'Verifica se a exceção correta é lançada caso Pessoa.setPeso() receba um nome inválido',
      () {
    /* values = [[peso, expect], ...] */
    List pesos = [
      ["0.00", "'Peso' precisa ser maior que '0'!"],
      [" ", "O valor de entrada para a 'peso' é inválido"],
      ["-5", "'Peso' precisa ser maior que '0'!"],
    ];

    for (var value in pesos) {
      Pessoa pessoa = Pessoa();
      // expect(() => pessoa.setPeso(value[0]), throwsA(TypeMatcher<ArgumentError>()));
      expect(
          () => pessoa.setPeso(value[0]),
          throwsA(allOf(TypeMatcher<ArgumentError>(),
              predicate((p0) => p0.toString().contains(value[1])))));
    }
  });
}
