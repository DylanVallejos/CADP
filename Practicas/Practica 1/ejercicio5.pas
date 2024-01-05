{Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
 reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
 número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.}
program ejercicio5;
var
numero_fijo:Real;
numero:Real;
contador:Integer;
begin
    contador:=0;//inicializo el contador
     WriteLn('Ingrese un numero que sera buscado');
  ReadLn(numero_fijo);
    while  (numero_fijo*2 <> numero) and ( contador < 10 ) do begin // (numero_fijo * 2) hace la cuenta y despues compara con la variable "numero" 
    WriteLn('Ingrese un numero');
    ReadLn(numero);
    contador:=contador+1;
    end;
end.