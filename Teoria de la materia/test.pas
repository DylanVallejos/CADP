program parcial;
const
 ingredientes=10;
type
 rango= 1..4;
 platos=record
 nombre:string;
 precio:real;
 categoria:rango;
 cant_ingredientes:vector;
 nom_ingredientes:string;
end;
   lista = ^nodo;
  nodo = record
    dato: platos;
    sig: lista;
  end;
 vector:=array[ingredientes] of integer;
 
procedure leer(p:platos); se disppne

procedure cargar(l:lista);se dispone

procedure inicializarVec(var vec:vector);
var i: integer;
begin
  for i:=1 to ingredientes do
    vC[i]:= 0;
end;

procedure max_categoria(vec:vector; max1,max2:integer; cat1,cat2:integer;)
var 
i:integer
 if (vec[i]>=max1) then
    begin
      max1:=vec[i];
      cat1:=i;
    end
  else if(vec[i]>=max2) then
    begin
      max2:=vec[i];
      cat2:=i;
end;

procedure promedio(var prom:real;)
var
i:integer;
suma:integer;
cantidad:integer;
begin
    suma:=0;
    for i:=1 to ingredientes do
    suma:=suma+precio;
    prom:=suma/cantidad;
    end;
end;

procedure recorrer(var L: lista);
var
  p:platos;
  vec:vector;
  i,suma,cantidad,cat1,cat2,max1,max2:integer;
  prom:real;
begin
  while(l<>nil)do 
  begin
   if(l^.dato.nom_ingredientes="perejil")then begin
   vec[l^.dato.cant_ingredientes:=cant_ingredientes+1];

  end; 
   prom:=0;
   promedio(l^.dato.cant_ingredientes.prom);
   end;
   max_categoria(vec[l^.dato.categoria,max1,max2,cat1,cat2]);
   end;
end; 

var
l:lista;
p:platos;
begin
l:=nil;
cargar(l,p);
recorrer(l);
end;