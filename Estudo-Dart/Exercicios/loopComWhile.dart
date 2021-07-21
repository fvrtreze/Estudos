import 'dart:io';

main() {
  bool condicao = true;

  while (condicao) {
    print("Escreva um texto");
    String? text = stdin.readLineSync();
    //aqui ele vai pedir pra digitar um texto e atribuir pra var
    if (text == "sair") {
      condicao = false;
      print("Programa finalizado");
    } else {
      print("você digitou: $text");
    }
  }
}
