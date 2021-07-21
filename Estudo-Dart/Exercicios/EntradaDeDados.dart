/* Script para identificar se uma pessoa é maior de idade. Sempre desenhar antes de codar:
  perguntar idade da pessoa;
  se idade for maior ou igual a 18
    então é maior de idade;
  se nao for
    ele não é maior de idade;

para atribuir uma entrada, um input precisamos abrir uma maleta de ferramentas diferente da nossa, 
não temos nada escrito para abrir o terminal e esperar uma leitura (dá pra fazer na mão), porém o dart
já tem um método pra isso. Basta importarmos.
*/

import 'dart:io'; //dart input (io)

main() {
  print("Digite uma idade");
  var input = stdin.readLineSync();
  //aqui estamos utilizando uma função do dart.io que foi importado, serve para receber um dado
  var idade = int.parse(input!); //converter para o inteiro

  if (idade > 50) {
    print("Melhor idade");
  } else if (idade >= 18) {
    print("Adulto");
  } else if (idade >= 12) {
    print("Adolescente");
  } else {
    print("criança");
  }
}
