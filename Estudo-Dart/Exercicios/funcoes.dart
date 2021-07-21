//Para não deixar o código poluido, utilizamos as funções para separar.
// Podemos também criar funções comn parametros.
// com as tipagens de variáveis adicionadas.

import 'dart:io';

main() {
  calcImc();
}

calcImc() {
  print("Digite seu peso:");
  String? textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  print("Digite sua altura:");
  String? textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura!);

  double calcImc = peso / (altura * altura);

  imprimirResultado(calcImc); //função com parametro
}

imprimirResultado(double calcImc) {
  print("=========================");
  if (calcImc < 18.5) {
    print("Abaixo do peso");
  } else if (calcImc > 18.5 && calcImc < 24.9) {
    print("Peso normal");
  } else if (calcImc > 25 && calcImc < 29.9) {
    print("Sobrepeso");
  } else if (calcImc > 30 && calcImc < 34.9) {
    print("Obesidade grau 1");
  } else if (calcImc > 35 && calcImc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
