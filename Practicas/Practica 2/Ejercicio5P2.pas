{Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
 b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
 números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de
 pares en las que numB es el doble de numA.
 Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores
 4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).}
 program Ejercicio1P5;
 procedure doble(var numA,numB,cantPares,cantDobles:Integer);
begin
    If(numA*2 = numB)then
      WriteLn('Es el doble');
      cantDobles:= cantDobles + 1;
 end;
 var
 numA,numB,cantPares,cantDobles:Integer;
 begin
 cantPares:=0;
 cantDobles:=0;
 readln(numA);
 Readln(numB);
 while (numA <> 0) and (numB <> 0) do begin
 doble(numA,numB,cantPares,cantDobles);
 cantPares:=cantPares + 1;
 Readln(numA);
 Readln(numB);
   
 end;
 end.