program emi;
var
cant,codigo_empresa,cant_inversiones:integer;
promedio,monto_inversion:real;
monto_total:real;
mayor:Real;
aux_cod:Integer;
i:Integer;
begin
cant:=0;
mayor:=-1;
repeat
    begin
     monto_total:=0;
     promedio:=0;
        writeln('ingrese un codigo');
        readln(codigo_empresa);
        writeln('ingrese la cantidad de inversiones');
        readln(cant_inversiones);

        for i:=1 to cant_inversiones do begin
          Writeln('ingrese el monto de cada inversion');
          readln(monto_inversion);
          monto_total:=monto_total + monto_inversion;
        end;

        promedio:=monto_total/cant_inversiones;

        if(monto_total>mayor) then begin
            aux_cod:=codigo_empresa;
            mayor:=monto_total;
        end;

        if (monto_inversion>5000) then 
            cant:=cant+1;
     writeln('empresa ',codigo_empresa,' monto promedio: ',promedio:0:2);
    end;
until (codigo_empresa=100);
writeln(' la empresa ',aux_cod,' es la que mayor dinero posee invertido ',mayor:0:2);
writeln(' hay ',cant,' empresas con inversiones por mas de 50000 ');
end.