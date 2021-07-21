/* Queremos adicionar a variavel para uma lista 

*/
import 'dart:io';

main() {
  var nome = [];
  // aqui é possível dizer q a vriavel é uma lista. Pode ser qlqr coisa pq é var, n tem tipo

  bool condicao = true;

  while (condicao) {
    print("Digite um nome");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      print("Programa finalizado");
      condicao = false;
    } else {
      nome.add(text); // adicionando a variavel text para a lista nome.
      print(nome);
    }
  }

  //A tipagem de uma list é List<tipo que contem na lista>
  List<String> nomes = ["Pedro Favoretti", "João Baptista"];
  nomes.add("João alberto");
  //Função para add uma propriedade em tempo de execução uma propriedade pro array

  print(nomes.length);
  //array tem funções que acessamos atraves do "."

  print(nomes[1]);
  // para acessar um indice começando sempre do 0 o indice.

  nomes.remove("Pedro Favoretti");
  nomes.removeAt(1);
  //remover um indice por nome ou por numero de indice.;

  print(nomes);
}
