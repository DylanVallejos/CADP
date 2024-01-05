{Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
 almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
 Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
 10% al precio anterior.
 Por ejemplo:
 ○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
 aumento de precio del producto 10382 no supera el 10%”
 ○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
 aumento de precio del producto 32767 es superior al 10%”}
program ejercicio7;
var
codigo:integer;
precio_actual:real;
precio_nuevo:real;
begin
    WriteLn('Ingrese codigo');
    ReadLn(codigo);
    while(codigo <> 32767)do begin
        WriteLn('Ingrese precio actual');
        ReadLn(precio_actual);
        if(precio_actual >=0 )then begin
            WriteLn('Ingrese el nuevo precio');
            ReadLn(precio_nuevo);
        end;
        if(precio_nuevo >(precio_actual * 1.1)) then
            WriteLn('el aumento de precio del producto ',codigo, ' es superior al 10%');
        WriteLn('Ingrese codigo');
        ReadLn(codigo);         
    end;
end.