(**************************************************************
*							      *
* Este programa calcula la sumatoria de los N primeros        *
* terminos						      *
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 15/02/2013			      *
*							      *
***************************************************************)

Var 
	i		:	integer;	// Variable de interacion
	s		:	integer;	// Sumatoria total
	n		:	integer;	// tope de la sumatoria
	cota_anterior	:	integer;
	cota_actual	:	integer;
Begin

	(* Entrada de Datos *)

	Writeln( 'Ingresar el tope de la sumatoria ');
	Writeln( ' El tope n debe ser solo valores positivos mayores que 0');

	(* Verificacion de los Datos *)

	Repeat // Programacion robusta

	Begin

		Writeln( ' Ingrese el valor de n: ');
		Readln(n);

	End

	Until ( n > 0 );

	{ Precondicion: n > 0 }
	
	(* Calculos *)

	i := 0;
	s := 0;

	{ Inv s = (% sigma i : 0 < i <= n : i) /\ n > 0 /\ i > 0 }

	Writeln( '     n = ', n:4, '     i = ', i:4, '     s = ', s);
	

	{ cota: n - i }

	cota_actual := n - i;

	While ( i < n ) Do
	Begin	
		i := i + 1;
		s := s + i;	

	(* Traza del invariante *)

		Writeln( '     n = ', n:4, '     i = ', i:4, '     s = ', s);
		cota_anterior := cota_actual;
		cota_actual := cota_actual - 1;

	(* Verificacion de la Cota *)

	End;

	(* Verificacion de los Resultados *)

	if ( s <> ( ( n * ( n + 1 ) ) / 2 ) ) Then

	Begin
		Writeln( ' Hubo un error en los calculos ');
		halt;
	End;

	(* Salida de los Resultados *)

	Writeln( ' El valor de la sumatoria es: ', s:12);


End.




























