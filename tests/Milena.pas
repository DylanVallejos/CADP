{c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%).}
program ejercicio6dp1;
var
 legajo, promedio:real;
 fin,destacados,legajo_dest:integer;
 alumnos:Real;
begin
 destacados:=0;
 legajo_dest:=0;
 Writeln ('Ingrese un legajo');
 read (legajo);
 Writeln ('Ingrese el promedio');
 read (promedio);
 fin:=-1;
 
 while (legajo <> fin) do;
  begin
   if (promedio>8.5) then;
    destacados:=destacados+1;
   if (2500>legajo) then;
    legajo_dest:=legajo_dest+1;
    read (legajo);
    read (promedio);
  end;
 alumnos:=(destacados/100) * legajo_dest;
 Writeln ('El porcentaje de alumnos destacados es',alumnos);
end.