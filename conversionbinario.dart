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
  print("Escriba el numero a transformar a binario");
  String? numbinario = stdin.readLineSync();
  int numeroabinario;

  numeroabinario = int.parse(numbinario ?? ''); 
  int valorfinalbinario = 0;
  int i = 1;
  
  while (numeroabinario > 0) {
    valorfinalbinario = valorfinalbinario + (numeroabinario % 2) * i;
    numeroabinario = (numeroabinario / 2).floor();
    i = i * 10;
  }
  print("El numero binario del numero $numeroabinario es  $valorfinalbinario");
}
