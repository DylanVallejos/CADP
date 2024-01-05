{ Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
 ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído)}
program ejercicio4;
var
numero_fijo:Real;
numero:Real;
begin
  WriteLn('Ingrese un numero que sera buscado');
  ReadLn(numero_fijo);
  while (numero_fijo*2<>numero) do begin // numero_fijo * 2 hace la cuenta y compara con la variable numero 
    WriteLn('Ingrese un numero');
    ReadLn(numero);

  end;
end.