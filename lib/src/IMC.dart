import 'dart:io';

IMC() {
  CalculoDeIMC();
}

CalculoDeIMC() {
  print("=====Digite seu peso======");
  var textpeso = stdin.readLineSync();

  var peso = int.parse(textpeso!);

  print("=====Digite sua altura======"); // altura em metros

  var textaltura = stdin.readLineSync();

  var altura = double.parse(textaltura!);

  var calcIMC = calcImc(peso, altura);

  ImprimeResultado(calcIMC);
}

double calcImc(var peso, var altura) {
  return peso / (altura * altura);
}

ImprimeResultado(double calcIMC) {
  print("====================");

  if (calcIMC < 18.5) {
    print("Abaixo do peso");
  } else if (calcIMC > 18.5 && calcIMC < 24.9) {
    print("Peso normal");
  } else if (calcIMC > 25 && calcIMC < 29.9) {
    print("Sobrepeso");
  } else if (calcIMC > 30 && calcIMC < 34.9) {
    print("Obesidade 1");
  } else if (calcIMC > 35 && calcIMC < 39.9) {
    print("Obesidade 2");
  } else {
    print("Obesidade 3");
  }
}
