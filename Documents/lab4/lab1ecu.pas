(*
* Ecuacion
* Este Programa determina si se cumple una ecuacion dada
* Autor: Jose Pena
* Ultima fehca de modificacion: 31/01/2013
*)
Program Ecuacion;
Var	a,b,c : integer; // Valores enteros
	d : boolean; // Variable booleana
Begin

	(* Lectura de Datos *)

	Writeln( ' Ingrese 3 enteros A, B y C para determinar si se cumple a/b = c');

	(* Verificacion de Datos *)

	Repeat

		Writeln( ' Ingrese el entero A: ');
		Readln(a);
		Writeln( ' Ingrese el entero B: ');
		Readln(b);
		Writeln( ' Ingrese el entero C: ');
		Readln(c);	
	
	Until ( b <> 0 )

	{precondicion: (b <> 0)}

	(* Calculo *)

	d := ( c = ( a / b ) );

	(* Verificacion de Datos *)

	Writeln ( ' La ecuacion de se c = a/b, es equivalente a: ', d);

	{postcondicion: d == ( a/b = c) }

	Writeln (d);
End.


(* Holadda *)

