{*
 * Actividad21
 * Este programa calcula la superficie de una habitacion
 * Autor: Jose Pena
 * Última modificación: 1 / 02 / 2013
 *}


Program Actividad21;

Var a     : real; // ancho de la habitacion
    l     : real; // largo de la habitacion
    area  : real;

Begin

	(* Lectura de datos *)    	

	Writeln(' Se debe ingresar el largo y ancho de una habitacion (metros)');
	Writeln( ' Tiene que ser datos positivos '); 	

	(* Verificacion de los datos *)

	Repeat

		Writeln('Ingrese el largo de la habitacion(metros): ');
		Read(l);
		Writeln('Ingrese el ancho de la habitacion(metros): ');
		Read(a);
	
	Until ( l > 0 ) and ( a > 0);

	{precondicion ancho >= 0 /\ largo >= 0}

	(* Calculo *)	

	area := l * a;

	(* Verificacion de los Resultados *) 

	If not ( area = l * a ) Then

		Begin
			Writeln(' Hubo un Error en los Calculos');
			halt;
		End;

	{postcondicion: area = ancho * largo }

	(* Salida de Datos *)

	Writeln('La superficie de la habitacion es: ', area:10:4 , ' metros al cuadrado');
	
	

	
End.


