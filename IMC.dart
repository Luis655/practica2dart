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
  print("Escriba su peso en kilogramos y su altura en cm");
  String? peso = stdin.readLineSync();

  print("Escriba su altura cm");
  String? altura = stdin.readLineSync();;

  double IMC = 0;
  double altura2 = 0;
  altura2 = double.parse(altura ?? '') * double.parse(altura ?? '');
  IMC = double.parse(peso??'') / altura2 ;

  if (IMC < 18.5)
     {
       
       print("su IMC es de ${IMC}, por  lo tanto el indice de masa cooporal es demaciado bajo");
     }
   if (IMC>18.5 && IMC<24.99)
     {
       print("su IMC es de ${IMC}, por  lo tanto el indice de masa cooporal es normal");;
                
     }

    if (IMC > 24.999  && IMC <= 29.99)
     {
                
         print("su IMC es de ${IMC}, por  lo tanto el indice de masa cooporal es superior a lo normal");
     }

     if (IMC > 30)
      {
        print("su IMC es de ${IMC}, por  lo tanto el usted padece de obesidad");
      }
      else
      {
         print("su IMC es de ${IMC}");
      }
  
}

