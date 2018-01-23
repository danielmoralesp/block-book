pragma Solidity ^0.4.2;

contract sample1 {
  function a(){}

  function b(){}
}

// sample2 hereda sample1
contract sample2 is sample1 {
  function b(){}
}

contract sample3 {
  function sample3(int b)
}

// sample4 hereda de sample1 y sample2
// Tenga en cuenta que sample1 también es padre de sample2, sin embargo, solo hay una solo
// instancia de sample1
contract sample4 is sample1, sample2 {
  function a(){}

  function c(){
    // esto ejecuta el método "a" del contrato del sample3
    a();

    // esto ejecuta el metodo "a" del contrato sample1
    sample1.a();

    // llama a sample2.b() porque está en último lugar en los contratos con los padres
    // listados y, por lo tanto, reemplaza sample1.b()
    b();
  }
}
