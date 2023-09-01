import 'package:dart_imc/interfaces/IPessoa.dart' as pessoa;

class Pessoa implements pessoa.PessoaInterface {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa({required String nome, required double peso, required double altura}) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  @override
  double getAltura() => _altura;

  @override
  String getName() => _nome;

  @override
  double getPeso() => _peso;
}
