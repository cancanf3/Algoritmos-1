{*
 * Actividad1
 * Este programa calcula tipos de triangulo a partir de 3 puntos dados
 * en el plano R2
 * Autor: Jose Pena
 * Última modificación: 01 / 02 / 2013
 *}

Program actividad1;


Type	Puntos	= 	Record 
	x	:	Real;
	y	:	Real;
		
End; 
		
	triangulo	=	(isoceles, escaleno, equilatero, degenerado);

	
Var	p1	: Puntos; // coordenadas del punto 1
	p2	: Puntos; // coordenadas del punto 2
	p3	: Puntos; // coordenadas del punto 3
	l1,l2,l3	: Real; // Valor de los lados del triangulo
	t	: triangulo; // tipo de triangulo
	b	: boolean;		

Begin		
		
	(* Entrada de datos *)		

	Writeln(' El programa le solicitara tres puntos en el plano cartesiano');		
	

	(* Verificacion de datos *)

	Repeat
		Writeln(' Inserte la coordenada x1 del triangulo y presione enter: ');
		Readln(p1.x);
	
		Writeln(' Inserte la coordenada y1 del triangulo y presione enter: ');
		Readln(p1.y);
			
		Writeln(' Inserte la coordenada x2 del triangulo y presione enter: ');
		Readln(p2.x);
		
		Writeln(' Inserte la coordenada y2 del triangulo y presione enter: ');
		Readln(p2.y);
		
		Writeln(' Inserte la coordenada x3 del triangulo y presione enter: ');
		Readln(p3.x);
		
		Writeln(' Inserte la coordenada y3 del triangulo y presione enter: ');
		Readln(p3.y);

	Until ( p1 <> p2 ) and ( p2 <> p3 ) and ( p1 <> p3 );

	{ Precondicion: p1 <> p2 and p2 <> p3 and p1 <> p3 }

	(* Calculos *)


	b := ( ( 0 = ( p1.y - p2.y ) ) or ( 0 = (p1.y - p3.y ) ) );

	Case b Of


		True : Begin If ( p1.y - p2.y ) / (p1.x - p2.x ) <> ( p1.y - p3.y ) / (p1.x - p3.x ) Then
	
				Begin
		
					l1 := Sqrt( Sqr( Abs(p1.x) + Abs (p2.x) ) + Sqr( Abs(p1.y) + Abs (p2.y) ) );
					l2 := Sqrt( Sqr( Abs(p1.x) + Abs (p3.x) ) + Sqr( Abs(p1.y) + Abs (p3.y) ) );
					l3 := Sqrt( Sqr( Abs(p3.x) + Abs (p2.x) ) + Sqr( Abs(p3.y) + Abs (p2.y) ) );




				If ( l1 = l2 ) And ( l2 = l3 ) Then
					Begin			
			
						t := equilatero;
			
           				End
				Else 
					if ( l1 <> l2 ) And ( l2 <> l3 ) And ( l1 <> l3 ) Then

						Begin
							t := escaleno;
						End
			
					Else 
						Begin		
							t := isoceles;
						End
			
			
				End
		
		
				Else 
					Begin 
						t := degenerado
					End;


			End;

	else begin



	If ( p1.x - p2.x ) / (p1.y - p2.y ) <> ( p1.x - p3.x ) / (p1.y - p3.y ) Then
	
		Begin
		
				l1 := Sqrt( Sqr( Abs(p1.x) + Abs (p2.x) ) + Sqr( Abs(p1.y) + Abs (p2.y) ) );
				l2 := Sqrt( Sqr( Abs(p1.x) + Abs (p3.x) ) + Sqr( Abs(p1.y) + Abs (p3.y) ) );
				l3 := Sqrt( Sqr( Abs(p3.x) + Abs (p2.x) ) + Sqr( Abs(p3.y) + Abs (p2.y) ) );


		

			 Else If ( l1 = l2 ) And ( l2 = l3 ) Then
				Begin			
			
					t := equilatero;
			
           			End
				Else 
					if ( l1 <> l2 ) And ( l2 <> l3 ) And ( l1 <> l3 ) Then

						Begin
							t := escaleno;
						End
			
					Else 
						Begin		
							t := isoceles;
						End
			
			
		End
		
		
	Else 
		Begin 
			t := degenerado
		End;

	

	End

End;

	(* Verificacion de los Resultados *)

	If not (t = isoceles) or ( t = escaleno) or (t = equilatero), ( t = degenerado) Then
		
		Begin
			Writeln (' Hubo un error en los calculos ');
		End;

	 {postcondicion: (t = isoceles) or ( t = escaleno) or (t = equilatero), ( t = degenerado) }

	(* Salida de datos *)

	Writeln(' El triangulo es ', t);

 

End.

