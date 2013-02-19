(**************************************************************
*							      *
* Este programa determina si un numero es perfecto	      *
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 18/02/2013			      *
*							      *
***************************************************************)

Program actividad2;
Var
n	:	integer;	//numero natural
i	:	integer;	//Variable de iteracion
l	:	integer;	//divisores

Begin

	(* Entrada de Datos *)

	Writeln(' Se debe ingresar un numero natural ');
	Writeln(' El programa determinara si es un numero perfecto');

	(* Verificacion de datos *)
	
	Repeat
	Begin
		Writeln(' Ingrese numero natural ');
		Read(n);
	End
	Until ( n > 0);

	{ Precondicion: n > 0 }

	(* Calculos *)

	l := 0;

	{Inv  (% sigma i : 0 < i < n : n mod i ) }

	Writeln(' n: ',n:5,'	l: ',l);

	For i := 1 to ( n - 1 ) Do
	Begin
		l:= l +  n mod i; 
		
	(* Traza de la invariante *)

		Writeln(' n: ',n:5,'	l: ',l);

	End;

	(* Verificacion de los Resultados *)


	{ Postcondicion:  l = (% sigma i : 0 < i < n : n mod i ) }

	(* Salida de los Resultados *)

	If ( l = n ) Then
	Begin
		Writeln(' El numero ',n,' es perfecto');
	End
	Else
	Begin
		Writeln(' El numero ',n,' no es perfecto');
	End;
End.
