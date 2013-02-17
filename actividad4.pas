(**************************************************************
*							      *
* Este programa determina si un entero dado es primo          *	
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 15/02/2013			      *
*							      *
***************************************************************)

Program actividad2;

Var 
	n	:	integer;	// Numero a verificar si es primo
	i	:	integer;	// Variable de interacion
	cota	:	integer;	// cota del ciclo
	b	:	boolean;


	(* Entrada de datos y Verificacion de datos *)

	Writeln ( ' Debera de ingresar un numero entero positivo ');

	Repeat

	Begin
		Writeln( ' Ingrese un numero ');
		Read(n);
	End
	
	Until ( n > 0 );

	{ Precondicion: n > 0 }

	(* Caluclos *)
	
	b := false;

	If ( n = 1 ) or ( n = 2 ) or ( n = 3) Then

	Begin

		Writeln( ' El numero es primo: True ');
		halt;
	End;

	{ Inv ( % exist i : 1 < i < n : n mod i ) }

	Writeln( 'n: ', n);

	For ( i := 2 ) to ( n - 1 ) Do

	Begin

		b := n mod i; 
		
	(* Traza de la invariante *)

		Writeln( 'n: ', n);

	End;

	(* Verificacion de los Datos *)

	{ Postcondicion: true == ( p == ( % exist i : 1 < i < n : n mod i ) }


	(* Salida de los Resultados *)

	Writeln( ' El numero es primo: ', b);

End.





























