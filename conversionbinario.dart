import 'dart:io';

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
