class Pessoa {
  String _nome = "";
  double _altura = 0.0;
  double _peso = 0.0;
  double _imc = 0.0;

  // Setters and Getters

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setImc(double imc) {
    _imc = imc;
  }

  double getImc() {
    return _imc;
  }

  // Construtor

  Pessoa(String nome, double altura, double peso, double imc) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
    _imc = imc;
  }

  // Override

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Altura": _altura,
      "Peso": _peso,
      "IMC": _imc,
    }.toString();
  }
}
