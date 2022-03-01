import "dart:io"; // for Platform

compras() { // main() is the entry point for the program
  List<String> produtos = []; // List is a collection of objects
  bool condicao = true;
  while (condicao) {
    // while(condicao) is a loop
    print("==== ADICIONE UM PRODUTO ====");
    var text = stdin.readLineSync(); // readLineSync() is a function that reads a line from the console
    if (text == "sair") { // if(text == "sair") is a condition
      print("======= SAINDO =======");
      condicao = false; // condicao = false is a statement
    } else if (text == "imprimir") {
      imprimir(produtos); // imprimir(produtos) is a function
      }
     else if (text == "remover") {
      remover(produtos); // remover(produtos) is a function
    } else {
      produtos.add(text!); // add() is a function that adds an element to a collection
      print("\x1B[2J\x1B[0;0H"); // clear the screen
    }
  }
}






imprimir (produtos) {  // imprimir(produtos) is a function
  for (var i = 0; i < produtos.length; i++) {   // for(var i = 0; i < produtos.length; i++) is a loop
    print("ITEM $i - ${produtos[i]}");  
  }
}

remover(produtos) {  // remover(produtos) is a function
  print("==== Qual item deseja remover? ====");
  imprimir(produtos);
  var valordado = stdin.readLineSync();  // readLineSync() is a function that reads a line from the console

  if(valordado != null) { 
  int item = int.parse(valordado); // int.parse(valordado) is a function that converts a string to an integer
  produtos.removeAt(item);  // removeAt() is a function that removes an element from a collection
  }
  print("======= ITEM REMOVIDO =======");
}
