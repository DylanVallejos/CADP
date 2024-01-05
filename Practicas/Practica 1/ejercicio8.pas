{Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
 uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
 vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”}
 program ejercicio8;
 var
 car1:Char;
 car2:Char;
 car3:Char;
 Vocales:boolean;
begin
   Vocales:=True;
   Write('Ingrese el 1er caracter');
   ReadLn(car1);
   Write('Ingrese el 2do caracter');
   ReadLn(car2);
   Write('Ingrese el 3er caracter');
   ReadLn(car3);
    if(( car1 <> 'a') and (car1 <> 'e' ) and (car1 <> 'i') and ( car1 <> 'o' ) and (car1 <> 'u' )) then
        Vocales:=False;
    if(( car2 <> 'a') and (car2 <> 'e' ) and (car2 <> 'i') and ( car2 <> 'o' ) and (car2 <> 'u' )) then
        Vocales:=False;
    if(( car3 <> 'a') and (car3 <> 'e' ) and (car3 <> 'i') and ( car3 <> 'o' ) and (car3 <> 'u' )) then
        Vocales:=False;
    if(Vocales)then
        WriteLn('Las 3 son vocales')
    else
        WriteLn('Al menos una no era vocal');

 end.