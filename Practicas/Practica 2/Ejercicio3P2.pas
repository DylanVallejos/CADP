 //Encontrar los 6 errores que existen en el siguiente programa. Utilizar los comentarios entre llaves como guía,
// indicar en qué línea se encuentra cada error y en qué consiste:
 program ejercicio5;
 { suma los números entre a y b, y retorna el resultado en c }
 procedure sumar(a, b, c : integer)//falta el punto y coma
 var
 suma : integer;
 begin
 for i := a to b do // tendria que usar do begin si quiere iterar sobre mas de una linea de codigo.
 suma := suma + i;//suma no tienen ningun valor ni esta inicialziado
 c := c + suma;// lo mismo ni la varaible suma ni C tienen algun valor o estan inicializados
 end;
 var
 result : integer;
 begin
 result := 0;
 readln(a); readln(b); // a y b no estan declaradas como variables
 sumar(a, b, 0);// se tienen que enviar variables no numeros
 write(‘La suma total es ‘,result);
 { averigua si el resultado final estuvo entre 10 y 30}
 ok := (result >= 10) or (result <= 30);
 if (not ok) then
 write (‘La suma no quedó entre 10 y 30’);
  end.