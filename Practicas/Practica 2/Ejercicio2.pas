{Dado el siguiente programa, indicar qué imprime}
 program ejercicio2;
 var a,b: integer;
 procedure uno;
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

 {El programa imprime 3 del procedimiento "uno" y como dentro del modulo no usa una variable local pisa el valor
 que anteriormente tenia la variable b esto quiere decir que despues imprime 3 y 1}
