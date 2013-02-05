(*
* ComparacionAB
* Este Programa determina si dado dos numeros, cual es mayor
* Autor: Jose Pena
* Ultima fehca de modificacion: 31/01/2013
*)
Program ComparacionAB;
Var	a : integer; // nro. entero
	b : integer; // nro. entero par
	c : boolean;  // variable bolleana
Begin

	(* Lectura de datos *)
	
	Writeln ( 'Va a ingresar dos numeros enteros A y B, donde B tiene que ser par');
	Writeln ( ' El programa determinara si A es mayor que B');

	{Precondicion: b mod 2 = 0 }
	
	(* Verificacion de Datos *)

	Repeat
	
		Writeln( 'Escriba el valor de un entero A cualquiera: ');
		Readln(a);
		Writeln ( 'Escriba el valor de un entero B cualquiera (B tiene que ser par): ');
		Readln(b);

	Until ( b mod 2 = 0 );

	(* Calculo *)

	c := ( a > b );

	(* Verificacion del Resultado *)

	Writeln ( 'A es mayor a B, es equivalente a: ',c);


	{Postcondicion: c == (a>b) }

	Writeln (c);
End.

