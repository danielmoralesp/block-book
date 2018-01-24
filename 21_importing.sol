pragma Solidity ^0.4.2;

// Esta instrucción importa todos los símbolos globales de "filename" (y símbolos
//    importado allí) en el alcance global actual. "filename" puede ser una ruta  absoluta
//    o relativa. Solo puede ser una URL HTTP
import "filename";

// crea un nuevo símbolo global symbolName cuyos miembros son todos los simbolos globales
//   de "filename".
import * as symbolName from "filename";

// crea nuevos símbolos globales alias y symbol2 que hacen referencia a symbol1 y
//    symbol2 desde "filename", respectivamente.
import { symbol1 as alias, symbol2 } from "filename"

// esto es equivalente a import * as symbolName desde "filename" ;.
import "filename" as symbolName;
