{Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.}
program ejercicio9;
var
op:Char;
num:Integer;
acumular:integer;
begin
acumular:=0;
WriteLn('Ingrese una operacion ');
ReadLn(op);
WriteLn('Ingresar numero');
ReadLn(num);
while ( num <> 0 ) do begin
    if( op = '+') then 
        acumular:=acumular + num
    else if ( op = '-')then 
        acumular:=acumular - num;
    WriteLn('Ingresar numero');
    ReadLn(num);
end;
WriteLn('el resultado es ', acumular);
end.