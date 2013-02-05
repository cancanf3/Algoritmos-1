{*
 * Actividad1
 * Este programa muestra los dias de semana por orden e ordinal, y tambien muestra
 * los dias del fin de semana por orden e ordinal
 * Autor: Jose Pena
 * Última modificación: 22 / 01 / 2013
 *}

program actividad1;
type dias_semana = (Lunes,Martes,Miercoles,
                   Jueves,Viernes,Sabado,Domingo);
      fines_semana = Sabado..Domingo; 
      fin_semana = (Sabados,Domingos);

var   dias : dias_semana; // Dias de la semana
      fin : fines_semana; // Fines de semana en subrango
      fines : fin_semana; // fines de semana

Begin

	(* Lectura de datos *)	
          
        (* Verificacion de Datos *)

	{precondicion: true}

	(* Calculos *)

	(* Verificacion de Resultados *)
    
    	{postcondicion: dias_semana = (Lunes,Martes,Miercoles,
                   Jueves,Viernes,Sabado,Domingo) /\ fin_semana = (Sabados,Domingos) }

	(* Salida de Datos *)	
	
	Writeln( Lunes, ord(Lunes) );
	Writeln( Martes, ord(Martes) );
	Writeln( Miercoles, ord(Miercoles) );
	Writeln( Jueves, ord(Jueves) );
	Writeln( Viernes, ord(Viernes) );
	Writeln( Sabado, ord(Sabado) );
	Writeln( Domingo, ord(Domingo) );


End.

