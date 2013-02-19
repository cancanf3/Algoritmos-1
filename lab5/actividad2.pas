(**************************************************************
*							      *
* Este programa calcula una secuencia de numeros hasta        *	
* que se llegue a unos determinados numeros y se cuenten      * 
* los numeros de pasos					      *
* Autor: Jose Pena					      *
* Ulfima Fecha de edicion: 15/02/2013			      *
*							      *
***************************************************************)

Program actividad2;
Var
x 		:	integer;	//primer numero de la secuencia
s		:	integer;	// Variable que determina el numero de pasos
cotaActual	:	integer;	
cotaAnterior	:	integer;
Begin

	(* Entrada de Datos *)

	Writeln(' Se debe ingresar un numero entero positivo para la secuencia');

	(* Verificacion de Datos *)

	Repeat
	Begin
		Writeln('  Ingrese un numero entero positivo ');
		Readln(x);
	End
	Until ( x > 0 ); 

	{ Precondicion: x > 0 }

	(* Calculo *)

	s := 0;


	{ Inv  ( x / 2 ) \/ ( x * 3 + 1 ) /\ n > 0}

	Writeln('x: ',x:5,'	(numero de pasos): ',s:5);

	While ( x > 4 )  Do
	Begin
		If ( 0 = x mod 2 ) Then
		Begin
	
			x := x div 2;
			s := s + 1;
		
		End
		Else
		Begin
		
			x := x * 3 + 1;
			s := s + 1;
			
		End;

	(* Traza de invariante *)

		Writeln('x: ',x:5,'	(numero de pasos): ',s:5);
		cotaAnterior := cotaActual;
		cotaActual := MAXINT - s;

	(* chequeo de la cota *)
		If ((cotaActual < 0) or (cotaActual >= cotaAnterior)) Then 
		Begin
			writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
			writeln('POSIBILIDAD DE CICLO INFINITO.');
			halt;
		End;

	End;
	
	
	(* Verificacion de Datos *)

	{ Postcondicion: x = 4 }

	(* Salida de Datos *)

	Writeln(' La cantidad de intentos en total fue: ', s);




End.
