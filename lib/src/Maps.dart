import "dart:io";

List<Map<String, dynamic>> cadastros = [];  // Lista de cadastros

Cadastro() {
  //função principal
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H"); //limpa a tela
  while (condicao) {
    //enquanto a condição for verdadeira
    print("===Digite um comando ==="); //imprime o comando
    var comando = stdin.readLineSync(); //le o comando
    if (comando == "Sair") {
      print("=== PROGRAMA FINALIZADO ===");
      condicao = false; //faz a condição ficar falsa
    } else if (comando == "cadastro") { 
      print("\x1B[2J\x1B[0;0H"); //limpa a tela
      cadastrar(); //chama a função cadastrar
    } else if (comando == "imprimir") {
      //se o comando for imprimir
      print(cadastros); //imprime o mapa
    } else {
      //se não for nenhum dos comandos acima
      print("===Comando não encontrado ==="); //imprime o comando não encontrado
    }
  }
}

cadastrar() {
  //função cadastrar
  Map<String, dynamic> cadastro = {}; //cria um mapa vazio
  print("==== Digite seu nome ====");
  cadastro["nome"] = stdin.readLineSync(); //le o nome

  print("==== Digite sua idade ====");
  cadastro["idade"] = stdin.readLineSync(); //le a idade

  print("===Digite sua cidade ====");
  cadastro["cidade"] = stdin.readLineSync(); //le a cidade

  print("=== Digite seu estado ====");
  cadastro["estado"] = stdin.readLineSync(); //le o estado
  cadastros.add(cadastro);
}
