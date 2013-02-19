(*
* CuadradoPerfecto
* Este Programa determina si un numero es un cuadrado perfecto
* Autor: Jose Pena
* Ultima fehca de modificacion: 31/01/2013
*)
Program CuadradoPerfecto;
Var	n : integer; // Numero Entero
	b : boolean; // Variable booleana
Begin

	(* Lectura de Datos *)
	Writeln ( ' Ingrese un entero "n" para determinar si es cuadrado perfecto' );

	(* Verificacion de Datos *)

	Repeat

		Writeln( ' Ingrese un entero: ');
		Readln(n);

	Until ( n > 0 );

    {precondicion: (b>=0)}

	(* Calculo *)

	b := (n=SQR(INT(SQRT(n))));

	(* Verificacion de Resultado *)

	Writeln ( ' El numero n entero es cuadrado Perfecto: ', b);
 
    {postcondicion: b == (n=SQR(INT(SQRT(n)))) }
	
	(* Salida de Resultados *)

	Writeln (b);
End.
