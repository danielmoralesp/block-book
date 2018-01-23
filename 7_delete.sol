pragma Solidity ^0.4.2;

contract sample {
  struct Struct {
    mapping (int => int) myMap;
    int myNumber;
  }

  int[] myArray;
  Struct myStruct;

  function sample(int key, int value, int number, int[] array){
    // los mapas no se pueden asignar, así que al construir struct ignoramos
    // los mapas
    myStruct = Struct(number);

    // aqui cambiamos el mapa key/value
    myStruct.myMap[key] = value;

    myArray = array
  }

  function reset(){
    // el length de myArray es ahora 0
    delete myArray;

    // myNumber ahora es 0 y myMap se mantiene como está
    delete myStruct;
  }

  function deleteKey(int key){
    // aqui estamos eliminando la key
    delete myStruct.myMap[key];
  }
}
