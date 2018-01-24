pragma Solidity ^0.4.2;

contract sample {
  function a() returns (int a, string c){
    return (1, "ss")
  }

  function b() {
    int A;
    string memory B;

    // A is 1 y B es "ss"
    (A, B) = a();

    // A es 1
    (A, ) = a();

    // B es "ss"
    (, B) = a();
  }
}
