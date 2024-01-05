{Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
 Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir:
 12    4    -10
 }
 program ejercicio3;
 var
 num1,num2,num3:integer;
 begin
    WriteLn('Ingrese un numero');
    ReadLn(num1);
    WriteLn('Ingrese un numero');
    ReadLn(num2);
    WriteLn('Ingrese un numero');
    ReadLn(num3);
    if(num1>=num2)and (num1>=num3) then
        if num2 >= num3 then
            WriteLn(num1,num2,num3)
        else
            WriteLn(num1,num3,num2)
    else if (num2>=num1) and (num2>=num3)then
        if(num1>=num3) then
            WriteLn(num2,num1,num3)
        else
            WriteLn(num2,num3,num1)
    else if (num3>=num2) and (num3>=num1) then
        if (num2>=num1) then
            WriteLn(num3,num2,num1)
        else
            WriteLn(num3,num1,num2)
 end.