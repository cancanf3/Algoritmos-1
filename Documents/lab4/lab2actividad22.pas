{*
 * Actividad22
 * Este programa calcula el perimetro, el area de una circunferencia 
 * y el volumen de una esfera con un radio dado 
 * Autor: Jose Pena
 * Última modificación: 01 / 02 / 2013
 *}

program Actividad22;

Const 
	pi 	= 	3.1416; // Valor de la constante pi

var	r	:	real; // radio de la circunferencia
	v	:	real; // Volumen de la esfera
	p	:	real; // perimetro de la circunferencia
	area	:	real; // Area de la circunferencia
    


Begin


	(* Lectura de datos *)

	Writeln( ' Se necesita ingresar el radio de la circunferencia y el de la esfera en metros');

	(* Verificacion de los datos *)

	Repeat

		write('Ingrese el radio de la esfera (metros): ');
		read(r);

	Until ( r > 0 );
 
	{Precondicion: radio >= 0}
	

	(* Calculos *)

	p := 2 * pi * r; // Perimetro de la circunferencia
	area := pi * r * r; // Area de la circunferencia
	v := ( (4 * pi) / 3 ) * (r * r * r); // Volumen de la esfera
	
	(* Verificacion de los Resultados *)
	
	If not ( p = 2 * pi * r ) and ( area = pi * r * r )
		and ( v = ( (4 * pi) / 3 ) * (r * r * r) ) Then

		Begin	
			Writeln( ' Hubo un error en los calculos ');
		End;

	{Postcondicion: perimetro = 2 * pi * radio
		       area := pi * (radio ^ 2)
		       volumen := ( (4 * pi) / 3 ) * (radio ^ 3)}

	(* Salida de datos *)

	writeln('el perimetro de la circunferencia es: ', p:10:4 , ' metros');
	writeln('el area de la circunferencia es: ', area:10:4 , ' metros cuadrados');
	writeln('el volumen de la esfera asociada al radio es: ', v:10:4 , ' metros cubicos');       
		       
End.
	
    


