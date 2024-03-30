{
    a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e informe
        la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que no debe
        procesarse. Nota: utilizar el módulo leer.
 b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe también el
         nombre del alumno con mejor promedio.
}
program Ejercicio1;
type
  str20 = string[20];
  alumno = record
    codigo: integer;
    nombre: str20;
    promedio: real;
  end;

procedure leer(var alu: alumno);
begin
  writeln('Ingrese el código del alumno');
  readln(alu.codigo);
  if (alu.codigo <> 0) then 
  begin
    writeln('Ingrese el nombre del alumno'); 
    readln(alu.nombre);
    writeln('Ingrese el promedio del alumno'); 
    ReadLn(alu.promedio);
  end;
end;

procedure maximo(nom: String; prom: Real; var max: real; var aux_nm: String);
begin
  if prom > max then
  begin
    max := prom;
    aux_nm := nom;
  end;
end;

procedure procesarAlumnos(var a: alumno; var cant: Integer; var maxi: real; var nom_alu: String);
begin
  maxi := 0;
  cant := 0;
  leer(a);
  while (a.codigo <> 0) do
  begin
    cant := cant + 1;
    maximo(a.nombre, a.promedio, maxi, nom_alu);
    leer(a);
  end;
  WriteLn('El nombre del alumno con mejor promedio es: ', nom_alu);
end;

var
  a: alumno;
  cant: Integer;
  maxi: real;
  aux_nom: String;

begin
  procesarAlumnos(a, cant, maxi, aux_nom);
  WriteLn('La cantidad de alumnos leídos son: ', cant);
end.