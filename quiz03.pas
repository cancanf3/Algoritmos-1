(* 
 * Este programa calcula la serie de e^x
 * Autor: Jose Pena
 * Fecha de creacion: 04/02/2013
*)

Program quiz03;

var n	 : integer;  // Variable que define el tope de la serie
   x	 : double; // Valor de x en la serie
   j	 : integer; // Variables de interacion
   s	 : double; // Valor total de la serie
   y,z,e : double; // Variables que permiten calcular la serie
Begin

   (* Entrada de Datos *)

   Writeln('Ingrese el numero de interaciones deseadas: ');
   Readln(n);
   Writeln( ' ingrese el valor de x: ');
   Readln(x);

   (* Verificacion de los datos *)
   
   { Precondicion: ( n < 20) }

   (* Calculos *)

   y := 1;
   z := x;
   e := 1;

   { Inv (% sigma j : 0 <= j <= n : ( x^j ) / ( j! ) ) }  
   
   Writeln( 'y: ', y:5, '      x: ', x, '     z: ', z, '     e: ', e);

   For j:= 2 to n  Do // La serie empieza 

   Begin

      x := z * x; // numerador de cada sumando de la serie
      y := j * y; // denominador de cada sumando de la serie
      e := e + ( x / y ); // la sumatoria progresiva de la serie
	
   Writeln( 'y: ', y:5, '      x: ', x, '     z: ', z, '     e: ', e);

   End;

   s := e + z; // Sumatoria total de la serie

   (* Verificacion de los datos *)

   { Postcondicion: s = ( 1 + x + e) }

   (* Salida de Datos *)

   Writeln(' El Valor de la serie es: ', s:20:15);


End.
   
