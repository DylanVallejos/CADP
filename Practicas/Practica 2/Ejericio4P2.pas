{El siguiente programa intenta resolver un enunciado. Sin embargo, el código posee 5 errores. Indicar en
 qué línea se encuentra cada error y en qué consiste el error.
 Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
 programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
 destinado por mes al pago de salarios, y el salario del empleado mayor legajo}

program programadores;
 procedure leerDatos(var legajo: integer; salario : real); // Salario esta pasado por valor por lo tanto este modulo no retorna su valor.
 
 begin
 writeln('Ingrese el nro de legajo y el salario');
 read(legajo);
 read(salario);
 end;
 procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
 var
 maxSalario : real;// declara una varaible con le mismo nombre que un parametro.
  begin
 if (nuevoLegajo > maxLegajo) then begin
 
 maxLegajo:= nuevoLegajo;
 maxSalario := nuevoSalario//falta el " ; " y no lo va a retornar en el parametro porque existe una variable local llamada igual.
 end;
 end;
 var
 legajo, maxLegajo, i : integer;
 salario, maxSalario : real;
 begin
 sumaSalarios := 0;// no esta declarado sumaSalarios como variable
 for i := 1 to 130 do begin
 leerDatos(salario, legajo);
 actualizarMaximo(legajo, salario, maxLegajo);
 sumaSalarios := sumaSalarios + salario;// sumaSalarios no va a tomar ningun valor porque no es una variable
 end;
 writeln(‘En todo el mes se gastan ‘, sumaSalarios, ‘ pesos’);
 writeln(‘El salario del empleado más nuevo es ‘,maxSalario);
 end.