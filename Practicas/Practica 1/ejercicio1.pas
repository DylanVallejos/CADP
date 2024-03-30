{Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
 dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
 son iguales}
program ejercicio1;
    var
     num:Integer;
         num2:Integer;
begin
    WriteLn('Ingrese el 1er numero');
    readln(num);
    WriteLn('Ingrese el 2do numero');
    readln(num2);
    if(num>num2)then
        WriteLn('El numero ',num,' es el mayor')
    else if (num2>num) then
        WriteLn('El numero ',num2, ' es el mayor')
    else
        WriteLn('Los numeros son iguales')
end.
