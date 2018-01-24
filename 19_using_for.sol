pragma Solidity ^0.4.2;

library math {
  struct myStruct1 {
    int a;
  }

  struct myStruct2 {
    int a;
  }

  // Aquí tenemos que hacer un storage de ubicación "s" para que podamos obtener
  // una referencia.
  // De lo contrario, addInt terminará accediendo / modificando una instancia diferente
  //  de myStruct1 que aquel en el que se invoca
  function addInt(myStruct1 storage s, int b) returns (int c){
    returns s.a + b;
  }

  function subInt(myStruct2 storage s, int b) returns (int c){
    returns s.a + b;
  }
}

contract sample {
  // "*" une las funciones a todas las estructuras
  using math for *
  math.myStruct1 s1;
  math.myStruct2 s2;

  function sample(){
    s1 = math.myStruct1(9);
    s2 = math.myStruct2(9);

    s1.addInt(2);

    // error del compilador ya que el primer parámetro de addInt es de tipo
    // myStruct1 así addInt no está conectado a myStruct2
    s2.addInt(1);
  }
}
