import 'dart:io';

//Uma lista(array) de um map, para não subscrever o map e sim adicionar outro.
//Lista dizendfo q a tipagem dela é um map e se chama cadastros.
//Dentro dela nós vamos fazer um add de um map la em cadastrar();
List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

  while (condicao) {
    print("Digite um comando");
    String? comando = stdin.readLineSync();
    if (comando == "sair") {
      print("Programa encerrado");
      condicao = false;
    } else if (comando == "cadastro") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("Esse comando não existe");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite seu nome");
  cadastro["nome"] = stdin.readLineSync();

  print("Digite sua idade");
  cadastro["idade"] = stdin.readLineSync();

  print("Digite sua cidade");
  cadastro["cidade"] = stdin.readLineSync();

  print("Digite seu estado");
  // como sabemos q é string, não colocamos uma variavel para intermediar, direto o que digita entra
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}
