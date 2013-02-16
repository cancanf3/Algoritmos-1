(**************************************************************
*							      *
* Este programa calcula los numeros de fibonacci              *	
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 15/02/2013			      *
*							      *
***************************************************************)

Program actividad3;

Var
	n	:	integer;	// Numero tope de la sucesion
	f	:	integer;	// componente de la sucesion
	s	:	integer;	// Total de la sucecion

Begin

	(* Entrada de Datos *)

	Writeln( ' Ingrese el numero tope de la sucesion ');
	Writeln( ' El numero n debe ser mayor o igual que 0 ');
	Writeln( ' Los valores iniciales del la sucesion son f1 = 1 y f0 = 0 ');

	(* Verificacion de los Datos *)

	Repeat

	Begin
		Writeln( ' Ingrese el tope n: ');
		Readln(n);
	End

	Until ( n >= 0);
	
	{Precondicion: n >= 0}

	(* Calculos *)
	
	s := 1;
	f := 0;

	Case n of

	0 : Begin Writeln( ' El valor de la sucesion es: 0');
		  halt; End;
	1 : Begin Writeln( ' El valor de la sucesion es: 1');
		  halt; End;
	End;

	{Inv (% sigma i,j : 0 <= i < j <= n : i + j ) /\ n > 0}	

	Writeln( ' s: ', s:5, '      f: ', f:5, '      n: ', n);

	For 2 to n Do

	Begin

		s := s + i;
		i := s;
	
	(* Traza del invariante *)
	
		Writeln( ' s: ', s:5, '      f: ', f:5, '      n: ', n);

	End;

	(* Verificacion de los Resultados *)

	{Postcondicion: (% sigma i,j : 0 <= i < j <= n : i + j ) /\ n > 0}	

	(* Salida de Resultados *)

	Writeln (' El valor de la sucesion es: ', s);

End.












































