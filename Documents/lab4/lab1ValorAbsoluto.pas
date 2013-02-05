(*
* ValorAbsoluto
* Este Programa calcula el valor absoluto de un entero
* Autor: Jose Pena
* Ultima fehca de modificacion: 31/01/2013
*)
Program ValorAbsoluto;
Var	n : integer; // nro. Entero
	r : integer; // Valor absoluto del entero
Begin

	(* Lectura de datos *)
	
	Writeln('Introduzca un entero: ');
	Readln (n);

	{precondicion: True }

	(* Procesamiento de datos *)

	r := abs(n);

	(* Verificacion de datos *)

	If not ( r > 0 ) Then

		Begin
			Writeln( ' Hubo un error en los calculos');
			halt; //Cierre del programa
		End;

	{postcondicion: ( n>=0 ==> r=n) /\ ( n<0 ==> r=-n)}
	
	(* Salida de los Resultados *)

	Writeln (r);
End.

