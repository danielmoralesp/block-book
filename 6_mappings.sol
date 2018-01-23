pragma Solidity ^0.4.2;

contract sample {
  mapping (int => string) myMap;

  function sample(int key, string value){
    myMap[key] = value;

    // myMap2 es una referencia a myMap
    mapping (int => string) myMap2 = myMap;
  }
}
