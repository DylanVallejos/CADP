{Dado los siguientes programas, explicar la diferencia}
                        program ejercicio4;
                        var a,b: integer; //tiene variables que pueden ser utilizadas en todo el programa
                        procedure uno;
                        begin
                        a := 1;
                        writeln(a);
                        end;
                        begin
                        a:= 1;
                        b:= 2;
                        uno;
                        writeln(b, a);
                        end.
        

                        program alcance4b;
                        procedure uno; 
                        begin
                        a := 1;
                        writeln(a);
                        end;
                        var a,b: integer;
                        begin
                        a:= 1;{ este va a tirar error poque no existe una variable llamada "a" y "b"}
                        b:= 2;
                        uno;
                        writeln(b, a);
                        end