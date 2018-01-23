pragma Solidity ^0.4.2;

contract sample1 {
  int a;

  // "payable" es un modificador incorporado
  // Este modificador es requerido si otro contrato está enviando Ether mientras está
  // llamando al método
  function sample1(int b) payable {
    a = b;
  }

  function assign(int c){
    a = c;
  }

  function makePayment(int d) payable {
    a = d;
  }
}

contract sample2 {
  function hello(){
  }

  function sample2(address addressOfContract){
    // enviamos 12 wei mientras creamos una instancia de contrato
    sample1 s = (new sample1).value(12)(23);

    s.makePayment(22);

    // enviando Ether también
    s.makePayment(45)(12);

    // especificando el monto de gas a usar
    s.makePayment.gas(895)(12);

    // enviando Ether y también especificando gas
    s.makePayment.value(4).gas(900)(12);

    // hello() es una llamada interna mientras que this.hello() es una llamada externa
    this.hello();

    // apuntando a un contrato que ya está desplegado
    sample1 s2 = sample1(addressOfContract);

    s2.makePayment(112);
  }
}
