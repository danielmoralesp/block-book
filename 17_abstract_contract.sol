pragma Solidity ^0.4.2;

contract sample1 {
  function a() returns (int b);
}

contract sample2 {
  function myFunc(){
    sample1 s = sample1(0xd5f9d8d94886e70b06e474c3fb14fd43e2f23970)

    // sin contrato abstracto esto no habría compilado
    s.a();
  }
}
