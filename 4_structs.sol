pragma Solidity ^0.4.2;

contract sample {
  struct myStruct {
    bool myBool;
    string myString;
  }

  myStruct s1;

  // siempre que se vea un método struct se crea una nueva estructura. Si el
  //  El método struct está en estado de lo que está almacenado y si se encuentra
  //  función interna que está almacenada en la memoria
  myStruct s2 = myStruct(true, ""); //  sintaxis del metodo struct

  function sample(bool initBool, string initString){

    //crear una instancia de struct
    s1 = myStruct(initBool, initString);

    // myStruct(initBool, initString) crea una instancia en memoria
    myStruct memory s3 = myStruct(initBool, initString);
  }
}
