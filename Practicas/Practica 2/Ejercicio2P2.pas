//Responda la pregunta en relación al siguiente programa:
 Program Ejercicio2P2;
 procedure digParesImpares(num : integer; var par, impar : integer);
 var
 dig: integer;
 begin
 while (num <> 0) do begin
 dig:= num mod 10;
 if((dig mod 2)= 0) then
 par := par + 1
 else
 impar:= impar +1;
 num := num DIV 10;
 end;
 end;
 var
 dato, par, impar, total, cant : integer;
 begin
 par := 0;
 impar := 0;
 repeat
 read(dato);
 digParesImpares(dato,par,impar);
 until (dato = 100);
 writeln('Pares: ',par, 'impares:', impar);
 end.
 a. ¿Qué imprime si se lee la siguiente secuencia de valores? 250, 35, 100
    Rta: Pares 1, Impares 4(Teniendo en cuenta que el 0 no es un numero par ni impar)
