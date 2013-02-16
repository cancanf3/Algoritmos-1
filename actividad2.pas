(**************************************************************
*							      *
* Este programa calcula el factorial de un numero N           *	
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 15/02/2013			      *
*							      *
***************************************************************)

Program actividad2;

Var
	n	:	integer;	// numero tope del factorial
	i	:	integer;	// Variable de interacion
	s	:	integer;	// Resultado del factorial

Begin

	(* Entrada de Datos *)

	Writeln( ' Se debe ingresar un numero mayor o igual que 0 ');

	(* Verificacion de los datos de entrada *)

	Repeat 
	
	Begin
		Writeln( ' Ingrese el valor de n!: ');
		Readln(n);
	End
	
	Until (n >= 0 );

	{Precondicion: n >= 0 }

	(* Calculos *)

	i := 0;
	s := 1;
	
	{inv s = (% pi i: 0 <= i <= n ) /\ n >= 0 }

	Writeln('n: ', n:5, '     i: ', i:5, '    s: ', s);      

	If ( n = 0 ) Then

	Begin
		Writeln( ' El valor del factorial es: ', s);
		halt;
	End;


	For i := 1 to n Do

	Begin 
		s := s * i;
	
	(* Traza del invariante *)
	
		Writeln('n: ', n:5, '     i: ', i:5, '    s: ', s);      

	End;

	(* Verificacion de los Resultados *)

	{postcondicion: s = n! }

	(* Salida de los Resultados *)

	Writeln( ' El valor del factorial es: ', s:10);


End.










































