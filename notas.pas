(*
*
*
*
*
*
*)

Program hola;
Type

nomreg	=	Record
campo1	:	real;
campo2	:	integer;

end;
const
m	=	100;

var 
hola	:	nomreg;
n	:	array[ 0..m ] of integer;

Function fibonacci (x:integer; y:integer):boolean;
var

Begin

End;

procedure
var 

begin 

end;

Begin

(* entrada de datos *)


{pre }


(* Calculo *)

{inv }
Writeln('todas las variables');

While n = 1 do
Begin

	(* Traza de la invariante *)
      Writeln('de cada varaible ');

	cotaAnterior:= cotaActual;
        cotaActual:= n+1-i;

        (* Chequeo de la cota *)

        IF (cotaActual < 0) OR (cotaActual >= cotaAnterior) THEN BEGIN
            WRITELN('ERROR al verificar la funcion de cota');
            WRITELN('Posibilidad de ciclo infinito');
            WRITELN('Presione "ENTER" para finalizar el programa');
            READLN;
            HALT;
        END;


End;


(* Verificacion de los resultados *)

{post }



