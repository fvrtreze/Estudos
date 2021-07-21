/*
pegar peso;
pegar altura;
realizar calculo;
retornar imc;

&& = and
*/

import 'dart:io';
// biblioteca para ter acesso a ferramenta do input

main() {
  print("Digite seu peso:");
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso!);
  // esse ! tem a ver com o null pois o textPeso esta vindo como um valor null de String?

  print("Digite sua altura:");
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);
  // double pois altura é numero quebrado.

  var calcImc = peso / (altura * altura);

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
