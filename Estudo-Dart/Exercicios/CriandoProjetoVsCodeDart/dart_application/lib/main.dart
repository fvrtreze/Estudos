/* esse arguments eu posso digitar ele no cmd, ele vai entender como se eu tivesse populando a list de string,
Estou no print pegando a posição 0 e vendo se é hackear, se sim print hackeamento concluido.
 com isso podemos executar um especificamente criar uma função e coloca na estrutura executando

 ---------------------------
  Paradigmas
 Paradigmas são formas de programar, ate agora usamos o Linear, q vai executando linha a linha.
 Depois passamos pro modular que é quando tem funções separadas, independente de onde os blocos ficam
 eles serão executados na chamada.
 
*/
import 'package:dart_application/src/cadastro.dart';
import 'package:dart_application/src/calculo_de_idade.dart';
import 'package:dart_application/src/calculo_imc.dart';
import 'package:dart_application/src/carrinho_compras.dart';

main(List<String> arguments) {
  if (arguments[0] == "calculo-idade") {
    calculoIdade();
  } else if (arguments[0] == "carrinho-compras") {
    carrinhoCompras();
  } else if (arguments[0] == "imc") {
    calcularImc();
  } else if (arguments[0] == "cadastro") {
    cadastrarPessoa();
  }
}
