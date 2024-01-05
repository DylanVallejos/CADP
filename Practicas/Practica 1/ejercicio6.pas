{Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
 lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
 Por ejemplo, se lee la siguiente secuencia:
 33423
 8.40
 19003
 6.43-1
 En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
 19003, cuyo promedio fue 6.43, y finalmente el legajo-1 (para el cual no es necesario leer un
 promedio).
 Al finalizar la lectura, informar:
 ○ La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2)
 ○ La cantidad de alumnos cuyo promedio supera  6.5 (en el ejemplo anterior, se debería informar 1)
 ○ El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
 menor al valor 2500 (en el ejemplo anterior se debería informar 0%).}
program ejercicio6;
var
legajo:integer;
promedio:real;
cantidad_alumnos:integer;
cantidad_alumnos_65:integer;
cantidad_alumnos_destacados:integer;
porcentajea_alumnos_destacados:Real;
begin
    WriteLn('Ingrese legajo');
    ReadLn(legajo);
    cantidad_alumnos:=0;
    cantidad_alumnos_65:=0;
    cantidad_alumnos_destacados:=0;
    cantidad_alumnos_destacados:=0;
    while ( legajo <> -1 ) do  begin
        WriteLn('Ingrese promedio');
        ReadLn(promedio);
        cantidad_alumnos:=cantidad_alumnos + 1;
        if( promedio > 6.5 )then
            cantidad_alumnos_65:=cantidad_alumnos_65+1;
        if( promedio > 8.5 ) and ( legajo < 2500 ) then
            cantidad_alumnos_destacados:=cantidad_alumnos_destacados+1;
        if( cantidad_alumnos_destacados > 0 ) then
            porcentajea_alumnos_destacados:= ( cantidad_alumnos_destacados/cantidad_alumnos ) * 100
        else
            porcentajea_alumnos_destacados:=0;
        WriteLn('Ingrese legajo');
        ReadLn(legajo);
    end;
    WriteLn('La cantidad de alumnos leidos son: ', cantidad_alumnos);
    WriteLn('La cantidad de laumnos con promedio mayor a 6.5 son: ', cantidad_alumnos_65);
    WriteLn('El porcentaje de alumnos destacados es de : ', porcentajea_alumnos_destacados:0:2, '%')
end.