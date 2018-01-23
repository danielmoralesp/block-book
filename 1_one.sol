pragma Solidity ^0.4.2;

contract Sample {
  // variables de estado
  uint256 data;
  address owner;

  // definicion del evento
  event logData(uint256 dataToLog);

  // modificador de funcion
  modifier onlyOwner(){
    if(msg.sender != owner) throw;
    _;
  }

  // constructor
  function Sample(uint256 initData, address initOwner){
    data = initData;
    owner = initOwner;
  }

  // funciones
  function getData() returns (uint256 returnedData){
    return data;
  }

  function setData(uint256 newData) onlyOwner{
    logData(newData);
    data = newData
  }
}
