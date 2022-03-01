import 'src/CalculoIdade.dart';  //importação do arquivo
import 'src/Compras_carrinho.dart';  //importação do arquivo
import 'src/Compras_carrinho.dart';
import 'src/IMC.dart';
import 'src/Maps.dart';

main(List<String> arguments) {  //main é o método principal
  if (arguments[0] == "Calculoidade") {  //se o primeiro argumento for igual a Calculoidade
    Calculoidadea(); //chama o método Calculoidadea
  } else if (arguments[0] == "Compras") { //se o primeiro argumento for igual a Compras
    compras();  //chama o método compras
  } else if (arguments[0] == "IMC") { //se o primeiro argumento for igual a IMC
    IMC();  //chama o método IMC
  } else if (arguments[0] == "Cadastro") { //se o primeiro argumento for igual a Cadastro
    Cadastro();  //chama o método Cadastro
  }
}
