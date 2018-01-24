pragma Solidity ^0.4.2;

library match {
  function addInt(int a, int b) returns (int c){
    return a + b;
  }
}

contract sample {
  function data() returns (int d){
    return match.addInt(1, 2);
  }
}
