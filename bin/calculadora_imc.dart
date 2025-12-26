import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/utils.dart';

void main(List<String> arguments) {
  var nome = lerConsole(
    "Bem-vindo a calculadora de IMC! Por favor digite seu nome abaixo:",
  );
  var altura = lerConsoleDouble("Agora, digite sua altura em metros.");
  var peso = lerConsoleDouble("Por fim, digite seu peso em quilos.");

  var imc = calcularIMC(peso, altura);
  var imcDuasCasas = imc.toStringAsFixed(2);

  var pf1 = Pessoa(nome, altura, peso, imc);

  print(pf1);

  print(
    "$nome, o seu IMC atual é: $imcDuasCasas - ${resultadoIMC(peso, altura)}",
  );
}
