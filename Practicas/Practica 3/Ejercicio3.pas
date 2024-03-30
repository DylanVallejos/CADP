program Ejercicio3;

type
  escuela = record
    CUE: Integer;
    nombre: Integer;
    cant_docen: Integer;
    cant_alum: Integer;
    localidad: String;
  end;

procedure leerAlumnos(var a: escuela);
begin
  WriteLn('Ingresar CUE');
  ReadLn(a.CUE);
  WriteLn('Ingresar nombre');
  ReadLn(a.nombre);
  WriteLn('Ingresar cantidad de docentes');
  ReadLn(a.cant_docen);
  WriteLn('Ingresar cantidad de alumnos');
  ReadLn(a.cant_alum);
  WriteLn('Ingresar localidad');
  ReadLn(a.localidad);
end;

function mayorAlumnos(local: String; cant_doc: Integer; cant_alu: Integer): Boolean;
begin
  if (local = 'La Plata') and (cant_doc = 1) and (cant_alu > 23435) then
    mayorAlumnos := True
  else
    mayorAlumnos := False;
end;

function relacionEscuela(a: escuela): Real;
begin
  relacionEscuela := a.cant_alum / a.cant_docen;
end;
procedure CalcularMejoresRelaciones(var mejorRelacion1, mejorRelacion2: Real;
  var mejorCUE1, mejorCUE2, mejorNombre1, mejorNombre2: Integer;
  a: Escuela);
var
  relacionActual: Real;
begin
  relacionActual := a.cant_alum / a.cant_docen;

  if relacionActual > mejorRelacion1 then
  begin
    mejorRelacion2 := mejorRelacion1;
    mejorRelacion1 := relacionActual;
    mejorCUE2 := mejorCUE1;
    mejorCUE1 := a.CUE;
    mejorNombre2 := mejorNombre1;
    mejorNombre1 := a.nombre;
  end
  else if relacionActual > mejorRelacion2 then
  begin
    mejorRelacion2 := relacionActual;
    mejorCUE2 := a.CUE;
    mejorNombre2 := a.nombre;
  end;
end;


procedure procesarEscuelas(var a: escuela);
var
  i: integer;
  cant_escuelas: Integer;
  mejorRelacion1, mejorRelacion2: Real;
  mejorCUE1, mejorCUE2, mejorNombre1, mejorNombre2: Integer; 
begin
  mejorRelacion1 := 0;
  mejorRelacion2 := 0;
  cant_escuelas := 0;

  for i := 1 to 2400 do
  begin
    leerAlumnos(a);
    if mayorAlumnos(a.localidad, a.cant_docen, a.cant_alum) then
      cant_escuelas := cant_escuelas + 1;
   CalcularMejoresRelaciones(mejorRelacion1, mejorRelacion2, mejorCUE1, mejorCUE2, mejorNombre1, mejorNombre2, a);
  end;

  writeln('Cantidad de escuelas de La Plata con relación alumnos-docente superior a la sugerida por UNESCO: ', cant_escuelas);
  writeln('CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos:');
  writeln('1. CUE: ', mejorCUE1, ', Nombre: ', mejorNombre1);
  writeln('2. CUE: ', mejorCUE2, ', Nombre: ', mejorNombre2);
end;

var
  a: escuela;

begin
  procesarEscuelas(a);
end.