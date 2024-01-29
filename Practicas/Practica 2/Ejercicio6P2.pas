{ Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
 producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar:
 ● Códigodelosdosproductos más baratos.
 ● Códigodelproducto de tipo “pantalón” más caro.
 ● Preciopromedio.}
 Program Ejercicio6P2;
 procedure LeerProductos(var precio:Real;var codigo:Integer;var tipo:String);
 begin
   ReadLn(precio);
   ReadLn(codigo);
   ReadLn(String);
 end;
 procedure Producto_barato(precio:Real;codigo:Integer;var cod1,cod2:integer;var precio1,precio2:real);
 begin
      if precio < precio1 then
    begin
      precio2 := precio1;
      cod2 := cod1;
      precio1 := precio;
      cod1 := codigo;
    end
    else if precio < precio2 then
    begin
      precio2 := precio;
      cod2 := codigo;
    end;
end;
procedure Pantalon_Caro(precio:real;codigo:integer;tipo:string;var Cod_Caro:Integer;var Precio_Caro:Real);
begin
  if(tipo= 'Pantalon')then begin
    if(precio>Precio_Caro) then
      Cod_Caro= codigo;
  end;
end;
 var
 precio,barato1,barato2,Precio_Caro,suma,promedio:Real;
 codigo,i,codigo1,codigo2,Cod_Caro:Integer;
 tipo:String;
 begin
 Precio_Caro:=-1;
 suma=0;
 For i := 1 to 100 do begin
   LeerProductos(precio,codigo,tipo);
   Producto_barato(precio,codigo,codigo1,codigo2,barato1,barato2,);
   Pantalon_Caro(precio,codigo,tipo,Cod_Caro,Precio_Caro);
   Suma:=Suma+precio;
   promedio= suma / 100;
   WriteLn('Codigo de los 2 productos mas baratos son ;',codigo1,codigo2);
   WriteLn('Codigo del pantalon mas caro es :',Cod_Caro);
   WriteLn('El precio promedio es',promedio);
 end;
 end.