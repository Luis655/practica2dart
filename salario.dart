import 'dart:io';
/*
UNIVERSIDAD TECNOLOGICA METROPOLITANA
LUIS ALBERTO MACIAS HAU 
5C TIC-DSM
Desarrollo móvil multiplataforma
Joel Ivan Chuc Uc
PRACTICA 2
 */
void main() {
  print("ingrese las horas trabajadas esta semana");
  String? horasdetrabajo = stdin.readLineSync();

  int horas = int.parse(horasdetrabajo ?? '');
  const salariohora = 120;
  const salarioExtra = 175;
  var salario;
  var horasExtra;
  var horasExtrafinal;
  var salarioconhorasExtra;
  salario = 40 * salariohora;

  if (horas < 27) {
    salario = horas * salariohora;
    print(
        "Las horas trabajadas no son suficientes, se le levantara un acta administrativa");
    print("cuando acumules 2 se le dara de baja");
    print("y su salario de esta semana es de $salario pesos");
  }
  if (horas > 40) {
    horasExtra = horas - 40;
    horasExtrafinal = horasExtra * salarioExtra;
    salarioconhorasExtra = salario + horasExtrafinal;
    print(
        "su salario esta semana es de $salarioconhorasExtra y sus horas extra trabajadas son $horasExtra");
  }

  if (horas > 27 && horas < 40) {
    salario = horas * salariohora;
    print("Usted no cuenta con horas extra esta semana");
    print(
        "Sus horas de trabajo estan en lo requerido, su salario es de $salario");
  }
}
