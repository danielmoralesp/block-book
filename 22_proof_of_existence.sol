pragma Solidity ^0.4.2;

contract Proof {
  struct FileDetails {
    uint timestamp;
    string owner;
  }

  mapping (string => FileDetails) files;

  event logFileAddedStatus(bool status, uint timestamp, string owner, string fileHash);

  // esto se usa para almacenar el owner del archivo en la marca de tiempo del bloque
  function set(string owner, string fileHash){
    // No hay una forma adecuada de verificar si una clave ya existe o no
    // por lo tanto, estamos verificando el valor predeterminado, es decir, todos los bits son 0
    if(files[fileHash].timestamp == 0){
      files[fileHash] = FileDetails(block.timestamp, owner);

      // estamos activando un evento para que la interfaz de nuestra aplicación
      // sepa que la existencia del archivo y los detalles de propiedad han sido almacenados
      logFileAddedStatus(true, block.timestamp, owner, fileHash);
    } else {
      // esto le dice al frontend la existencia de ese archivo y
      // los detalles de propiedad no pudieron ser almacenados porque los detalles
      // del archivo ya habían sido almacenados antes
      logFileAddedStatus(false, block.timestamp, owner, fileHash);
    }
  }

  // esto se usa para obtener información del archivo
  function get(string fileHash) returns (uint timestamp, string owner) {
    return (files[fileHash].timestamp, files[fileHash].owner);
  }
}
