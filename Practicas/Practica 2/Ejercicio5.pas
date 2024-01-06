 {Dado el siguiente programa, indicar cuál es el error.}
 program ejercicio5;
 function cuatro: integer;
 begin
 cuatro:= 4;
 end;
 var a: integer;
 begin
 cuatro;
 writeln(a);
 end.

 {va a tirar error porque no existe una variable declarada llamada "a"}