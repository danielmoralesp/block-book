pragma Solidity ^0.4.2;

contract sample {
  // El tipo entero que puede contener todos los valores enum y es el más pequeño
  //  se elige para mantener los valores enum
  enum OS { Windows, Linux, OSX, UNIX }

  OS choice;

  function sample(OS chosen){
    choice = chosen;
  }

  function setLinuxOS(){
    choice = OS.Linux;
  }

  function getChoice() returns (OS chosenOS){
    return choice;
  }
}
