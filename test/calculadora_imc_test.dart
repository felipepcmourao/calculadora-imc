import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/utils.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test("Calcular IMC", () {
    expect(resultadoIMC(80, 1.74), "Sobrepeso");
  });
}
