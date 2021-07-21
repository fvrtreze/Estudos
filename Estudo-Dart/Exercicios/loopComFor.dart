/*
precisamos de um ponteiro pra começar o loop.
Sintaxe:
Primeiro a variavel, segundo a condição e por terceiro o acrescimo.

No nosso caso, definimos a variavel int num = 0, que enquanto num for < 10 ele vai se repetir
com o num++ (ele + 1)
*/

main() {
  for (int num = 0; num < 10; num++) {
    print("rodou $num");
    // esse $ chama a variavel dentro do print
  }

/* Agora vamos utilizar o while 
Ele só recebe 1 condição ao contrario do for.
*/
  bool condicao = true;
  int num2 = 0;

  while (condicao == false) {
    print("rodou $num2");
    if (num2 > 9) {
      condicao = false;
    }
    num2++;
  }
}
