import 'package:dart_imc/interfaces/IPessoa.dart' as pessoa;

class Pessoa implements pessoa.PessoaInterface {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  @override
  void setNome(String nome) {
    if (nome.length < 3) {
      throw Exception("'nome' precisa ter ao menos 3 letras!");
    }
    _nome = nome;
  }

  @override
  void setAltura(String altura) {
    try {
      _altura = double.parse(altura) / 100;
    } catch (err) {
      throw Exception("O valor de entrda para a 'altura' é inválido");
    }
    if (_altura.isNaN) {
    } else if (_altura <= 0) {
      throw Exception("'Altura' precisa ser maior que '0'!");
    }
  }

  @override
  void setPeso(String peso) {
    try {
      _peso = double.parse(peso);
    } catch (err) {
      throw Exception("O valor de entrada para a 'altura' é inválido");
    }
    if (_peso <= 0) {
      throw Exception("'Peso' precisa ser maior que '0'!");
    }
  }

  @override
  double getAltura() => _altura;

  @override
  String getName() => _nome;

  @override
  double getPeso() => _peso;
}
