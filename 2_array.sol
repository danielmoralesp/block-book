pragma Solidity ^0.4.2;

contract sample {
  // array de tamaño dinamico
  // siempre que se ve una matriz literal, se crea una nueva matriz. Si el
  //  array literal está en estado de lo que está almacenado y si se encuentra
  //  función interna que está almacenada en la memoria
  // Aquí myArray almacena [0, 0] array. El tipo de [0, 0] se decide basado
  //  en sus valores
  // Por lo tanto, no puede asignar un literal de matriz vacío.
  int[] myArray = [0, 0];

  function sample(uint index, int value){
    //índice de una matriz debe ser tipo uint256
    myArray[index] = value;

    // myArray 2 contiene el puntero a myArray
    int[] myArray2 = myArray

    // una matriz de tamaño fijo en la memoria
    // aquí estamos obligados a usar uint24 porque 99999 es el valor máximo
    // y 24 bits es el tamaño máximo requerido para mantenerlo.
    // Esta restricción se aplica a los literales en la memoria porque la memoria
    // es cara. Como [1, 2, 99999] es de tipo uint24 por lo tanto myArray3 también
    // tiene que ser del mismo tipo para almacenar el puntero al mismo.
    uint24[3] memory myArray3 = [1, 2, 99999]; // Array literal

    // arroja una excepción al compilar como myArray4 no se puede asignar
    // al tipo complejo almacenado en la memoria
    uint8[2] myArray4 = [1, 2]
  }
}
