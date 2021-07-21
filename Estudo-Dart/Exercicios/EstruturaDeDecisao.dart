/*
Como tomar decisões? 

Uma comparativa é somente, o if já identifica q está fazendo uma comparativa:
  var isTrue = 1 > 0; 
    var isTrue = 1 == 0; precisa ser dois = pois se não o dart entende como atribuição
      var isTrue = 1 != 0; diferente
*/

main() {
  var num1 = 3;
  var num2 = 5;

  var isTrue = num1 != num2;
  //Observe q com isso o dart já entende que a variavel é um bool.

  if (isTrue) {
    print("Isso é vdd");
  } else {
    print("Isso é falso");
  }
}
