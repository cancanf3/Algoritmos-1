
Program Quiz;

Type unidades = ( petametros, anosluz, parsecs);
     distancias = Record 
	   u : unidades;
	   m : real;
End;

Var d1,d2,d3,dt : distancias; // los valores para d1
   b1,b2,b3 : unidades; // variable que determina la magnitud de los datos entrantes

Const anosluz = 9.46;
   parsecs    = 30.9;
Begin

	(* Entrada de datos *)

	Writeln (' Inserte las 3 distancias requeridas');

	(* Verificacion de Datos *)	
	
	Repeat
	
		Writeln('Inserte la distancia numerica desde la tierra al punto A: ');
   		Readln (d1.m);
	   	Writeln('Inserte las unidades de la distancia en parsecs o anos luz: ');
	   	Readln (d1.u);

		Writeln('Inserte la distancia numerica desde el punto A  al punto B: ');
	  	Readln (d2.m);
	   	Writeln('Inserte las unidades de la distancia en parsecs o anos luz: ');
	   	Readln (d2.u);

		Writeln('Inserte la distancia numerica desde el punto B  a Algol: ');
	   	Readln (d3.m);
		Writeln('Inserte las unidades de la distancia en parsecs o anos luz: ');
		Readln (d3.u);
	
	Until ( d1.m > 0 ) and ( d2.m > 0 ) and ( d3.m > 0 );
	
	{Precondicion: (d1 /\ d2 /\ d3) > 0 }
 	
	(* Calculos *)  
   
   b1 := ord(d1.u);
   d1.m := ( d1.m / b1  );

   b2 := ord(d2.u);
   d2.m := ( d2.m / b2 );
 
   b3 := ord(d3.u);
   d3.m := ( d3.m / b3 );

   dt.m := d1.m + d2.m + d3.m;
   
   dt.u := petametros

	(* Verificacion de los resultados *)

	If not ( dt = d1.m + d2.m + d3.m ) and ( dt.u = petametros ) Then

		Begin
			Writeln(' Hubo un error en los calculos ');
		End;

	{Postcondicion: dt = d1.m + d2.m + d3.m /\ dt.u := petametros}

	(* Salida de datos *)

	Writeln ( ' La distancia total desde la tierra a Algol es: ', dt.m, dt.u);

  

End.
