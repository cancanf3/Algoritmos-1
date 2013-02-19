{*
 * Actividad23
 * Este programa calcula la sumatoria de los cuadrados hasta un numero n
 * Autor: Jose Pena
 * Última modificación: 22 / 01 / 2013
 *}

program actividad23;

var	h	:	integer; // Horas
	m	:	integer; // Minutos
	s	:	integer; // Segundos

Begin

	(* Lectura de datos *) 

	Writeln (' El programa le va a pedir que ingrese una cantidad de segundos (datos enteros positivos)' );

	(* Verificacion de datos *)

	Repeat

		Writeln (' Ingrese los segundos ');
		Readln(s);

	Until ( s > 0);
    
	{Precondicion: s > 0}

	(* Calculos *)

	h := s div 3600;
	s := s mod 3600;
	m := s div 60;
	s := s mod 60;
	
	(* Verificacion de Resultados *)

	If not ( h = s div 3600 ) and ( s = s mod 3600 )
		and ( m = s div 60 ) and ( s = s mod 60 ) Then
	
		Begin

			Writeln ( ' Hubo un error en los calculos ');
		End;

	{Postcondicion: h := s div 3600;
		s := s mod 3600;
		m := s div 60;
		s := s mod 60; }
	

	(* Salida de datos *)

	Writeln ( ' Horas: ', h:4, ' Minutos: ', m:2, ' Segundos: ', s:2 );
	
End.

