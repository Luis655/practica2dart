import 'dart:io';

void main() {
  print("ingrese la oracion para ver si es o no un palindromo");
  final String? oracion = stdin.readLineSync();

  var palindromoRespuesta = Palindromos(oracion);
  print(palindromoRespuesta);
}

String Palindromos(String? oracion) {
  String oracion1 = oracion!.toUpperCase();
  String oracion2;
  String oracion3;
  var oracionalrevez = StringBuffer();

  oracion2 = oracion1
      .replaceAll(" ", "")
      .replaceAll(",", "")
      .replaceAll(".", "")
      .replaceAll(":", "");

  oracion3 = oracion1
      .replaceAll(" ", "")
      .replaceAll(",", "")
      .replaceAll(".", "")
      .replaceAll(":", "");

  for (var i = oracion2.length - 1; i >= 0; i--) {
    oracionalrevez.write(String.fromCharCode(oracion2.runes.elementAt(i)));
  }

  oracionalrevez.toString();

  if (oracion3 == oracionalrevez.toString()) {
    return ("La oracion $oracion1 SI es un palindromo y tiene ${oracion2.length} ");
  }

  return ("La oracion $oracion1 NO es un palindromo y tiene ${oracion2.length} ");
}
