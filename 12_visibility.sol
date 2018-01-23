pragma Solidity ^0.4.2;

contract sample1 {
  int public b = 78;
  int internal c = 90;

  function sample1(){
    // acceso externo
    this.a();

    // error del compilador
    a();

    // acceso interno
    b = 21;

    // acceso externo
    this.b;

    // acceso externo
    this.b();

    // error del compilador
    this.b(8);

    // error del compilador
    this.c();

    // acceso interno
    c = 9;
  }

  function a() external{
  }
}

contract sample2 {
  int internal d = 9;
  int private e = 90;
}

// sample3 hereda de sample 2
contract sample3 is sample2 {
  sample1 s;

  function sample3(){
    s = new sample1();

    // acceso externo
    s.a();

    // acceso externo
    var f = s.b;

    // Error del compilador como accesor no se puede usar para asignar un valor
    s.b = 18;

    // error del compilador
    s.c();

    // acceso interno
    d = 8;

    // error del compilador
    e = 7
  }
}
