import 'dart:io';

calcularImc() {
  print("Digite seu peso:");
  String? textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  print("Digite sua altura:");
  String? textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura!);

  double imc = calcImc(peso, altura); //Atribui o retorno para a var imc

  imprimirResultado(imc); //função com parametro
}

double calcImc(int peso, double altura) {
// nesse caso colocamos o double antes do calcImc para dizer qual valor queremos de retorno
// para retornar utilizar o return + o que quer que retorne
  return peso / (altura * altura);
}

imprimirResultado(double imc) {
  print("=========================");
  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso normal");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
