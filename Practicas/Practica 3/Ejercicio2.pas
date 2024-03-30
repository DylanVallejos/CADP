{ El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos
 durante el año
 2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese año.
 a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
 b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido
 en el inciso a).
 c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura finaliza al
 ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos realizados durante los
 meses de verano (enero, febrero y marzo) y la cantidad de casamientos realizados en los primeros 10 días de
 cada mes. Nota: utilizar el módulo realizado en b) para la lectura de fecha
 }
program Ejercicio2;
type
  fecha = record
    dia:Integer;
    mes:Integer;
    anio:Integer;
    end;
procedure leerFecha(var f:fecha);
begin
  WriteLn('Ingresar anio');
  ReadLn(f.anio);
  WriteLn('Ingresar mes');
  ReadLn(f.mes);
  WriteLn('Ingresar dia');
  ReadLn(f.dia);
end;
procedure procesarF(var f:fecha;)
var
    cantM:Integer;
    cantD:Integer;
begin
    cantM:=0;
    leerFecha(f);
    while(f.anio<>2020)do begin
        if(f.mes=1) or (f.mes=2) or (f.mes=3) then
        cantM:=cantM+1;
        if(f.dia=1) or (f.dia=2) or (f.dia=3) or (f.dia=4) or (f.dia=5) or (f=dia=6) or (f.dia=7)
        or (f.dia=8) or (f.dia=9) or (f.dia=10) then
            cantD:=cantD+1;
    end;
    WriteLn('La cantidad de casamientos en el mes de enero, febrero y marzo son',cantM);
    WriteLn('La cantidad de casamiento ')
end;

var
    f:fecha;
begin
  procesarF(f);
end.