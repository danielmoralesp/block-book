pragma Solidity ^0.4.2;

contract simple {
  // donde se ve un literal de cadena, se crea una nueva cadena. Si la
  // cadena literal está en estado de que está almacenada en el almacenamiento y si se encuentra
  //  la función interna que está almacenada en la memoria
  //  Aquí myString almacena "" cadena.
  string myString = ""; //string literal
  bytes myRawString;

  function sample(string initString, bytes rawStringInit){
    myString = rawStringInit;

    // myString2 tiene un puntero a myString
    string myString2 = myString;

    // myString3 es un string en memoria
    string memory myString3 = "ABCDE";

    // aqui el length y el contenido cambia
    myString3 = "XYZ";

    myRawString = rawStringInit;

    // incrementando el length de myRawString
    myRawString.length++;

    // arroja una excepción al compilar
    string myString4 = "Example";

    // arroja una excepción al compilar
    string myString5 = initString;
  }
}
