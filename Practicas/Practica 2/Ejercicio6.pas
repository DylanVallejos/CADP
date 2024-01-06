{ a. Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo. 
Al finalizar la
 lectura el módulo debe imprimir en pantalla cuál fue el número par más alto.
 b. Implemente un programa que invoque al módulo del inciso a.}
program ejercicio6;
procedure actualizar_nro(num:integer; var numero_par_alto:Integer);
begin
while( num >= 0 ) do begin   
  if(num MOD 2 = 0)then begin
    numero_par_alto:=num;
  end;
     WriteLn('Ingrese un numero');
      ReadLn(num);
end;
WriteLn('el numero par mas alto es ',numero_par_alto);
end;
var
num:Integer;
numero_par_alto:Integer;
begin
WriteLn('Ingrese un numero');
ReadLn(num);
actualizar_nro(num,numero_par_alto);
end.