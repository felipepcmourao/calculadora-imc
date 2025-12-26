import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto).replaceAll(",", "."));
  if (numero == null) {
    throw Exception("O número que digitou é inválido, tente novamente.");
  } else {
    return numero;
  }
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String resultadoIMC(double peso, double altura) {
  switch (calcularIMC(peso, altura)) {
    case < 16:
      return "Magreza Grave";
    case >= 16 && < 17:
      return "Magreza Moderada";
    case >= 17 && < 18.5:
      return "Magreza Leve";
    case >= 18.5 && < 25:
      return "Saudável";
    case >= 25 && < 30:
      return "Sobrepeso";
    case >= 30 && < 35:
      return "Obesidade Grau I";
    case >= 35 && < 40:
      return "Obesidade Grau II (severa)";
    case >= 40:
      return "Obesidade Grau III (mórbida)";
    default:
      print("Erro. Operação Inválida.");
      exit(0);
  }
}
