{
Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
 número X, se escribe |X| y se define como:
    |X| = X cuando X es mayor o igual a cero
    |X| = -X cuando X es menor a cero
}
program ejercicio2;
var
  numero, valorAbsoluto: real;

begin
  writeln('Ingrese un numero real: ');
  readln(numero);

  if numero >= 0 then
    valorAbsoluto := numero
  else
    valorAbsoluto := -numero;

  writeln('El valor absoluto de ', numero:0:2, ' es ', valorAbsoluto:0:2);
  readln;
end.