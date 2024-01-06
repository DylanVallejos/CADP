{Dado el siguiente programa, indicar qué imprime.}

 program ejercicio1;
 var a,b: integer;
 procedure uno;
 var b: integer;
 begin
 b := 3;
 writeln(b);
 end;
 begin
 a:= 1;
 b:= 2;
 uno;
 writeln(b, a);
 end.
 
 {El programa imprime 3 2 1 primero imprime el 3 del procedimiento "uno" despues 2 y 1 de las variables a y b}