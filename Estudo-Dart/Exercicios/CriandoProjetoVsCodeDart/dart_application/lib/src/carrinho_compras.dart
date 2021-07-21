import 'dart:io';

List<String> produtos = [];
// tanto poderia fazer uma variavel global quanto passar por parametro pra chamar a função.

carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print("ADICIONE UM PRODUTO");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      print("Terminou o programa");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var item = 0; item < produtos.length; item++) {
    print("Item ${item + 1} - ${produtos[item]}");
    //acessa item a item enquanto não tiver o total de produtos da lista que vemos com o length
    // utilizamos um for para imprimir os itens, para pegar o valor de um indice foi necessario
    //concatenar com ${} esse +1 foi para não começar do 0
  }
}

remover() {
  print("Qual ítem deseja remover?");
  imprimir();
  int? itemDigitado = int.parse(stdin.readLineSync()!);
  // Fazemos o cliente digitar o numero de item q deseja.
  // Estava dando problemas com Null no readLine, então tive q colocar o ? na criação do var e no stdin.
  produtos.removeAt(itemDigitado);
  //pegamos a variavel e removemos da lista produtos passando a variavel q contem o numero.
  print("ítem removido");
}
