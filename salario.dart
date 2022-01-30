import 'dart:io';

void main() {
  print("ingrese las horas trabajadas esta semana");
  String? horasdetrabajo = stdin.readLineSync();

  int horas = int.parse(horasdetrabajo ?? '');
  const salariohora = 120;
  const salarioExtra = 175;
  var salario;

  salario = horas * salariohora;

  if (horas < 27) {
    print!(
        "Las horas trabajadas no son suficientes, se le levantara un acta administrativa");
    print("cuando acumules 2 se le dara de baja");
    print("y su salario de esta semana es de $salario pesos");
  }
    print("su salario es de $salario");
}
