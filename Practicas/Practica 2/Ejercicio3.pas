 {Dadoel siguiente programa, indicar cuál es el error y su causa.}
 program ejercicio3;
 var a: integer;
 procedure uno;
 var b: integer;
begin
 b:= 2;
 writeln(b);
 end;
begin
 a:= 1;
 uno;
 writeln(a, b);
end.

{Este programa va a tirar error porque cuando quiere impirme a, b no hay una variable declarada como b,
la que existe es local al procedimiento "uno"}