 program anidamientos;
 procedure leer;
 var
 letra : char;
 function analizarLetra : boolean
 begin
 if (letra >= ‘a’) and (letra <= ‘z’) then
 analizarLetra := true;
 else
 if (letra >= ‘A’) and (letra <= ‘Z’) then
 analizarletra := false;
 end; { fin de la funcion analizarLetra }
 begin
 readln(letra);
 if (analizarLetra) then
 writeln(‘Se trata de una minúscula’)
 else
 writeln(‘Se trata de una mayúscula’);
 end; { fin del procedure leer}
 var
 ok : boolean;
 begin
 { programa principal }
 leer;
 ok := analizarLetra;
 if ok then
 writeln(‘Gracias, vuelva prontosss’);
 end.
 {
 a) La función analizarLetra fue declarada como un submódulo dentro del procedimiento leer. Pero esto
 puede traer problemas en el código del programa principal.

 i)  ¿qué clase de problema encuentra?
    Rta: Al usar encapsulamiento no se puede invocar a la funcion analizarLetra en el programa principal
 ii)  ¿cómo se puede resolver el problema para que el programa compile y funcione correctamente?
        Rta: Declarando la funcion analizarLetra fuera del procedimiento "leer"

 b) Lafunción analizarLetra parece incompleta, ya que no cubre algunos valores posibles de la variable letra.

 i)  ¿De qué valores se trata?
    Los numero y caracteres especiales.
 ii)  ¿Qué sucede en nuestro programa si se ingresa uno de estos valores?
        No funciona bien el programa y se puede romper.
 iii)  ¿Cómo sepuede resolver este problema?
         Evaluando todos los posibles casos.
 
 }
