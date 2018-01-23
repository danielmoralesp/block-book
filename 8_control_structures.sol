pragma Solidity ^0.4.2;

contract sample {
  int a = 2;
  int[] b;

  function sample(){
    //"==" arroja exception para tipos complejos
    if(a == 12){
      // haga esto
    } else if (a == 34){
      // haga esto
    } else {
      // haga esto
    }
  }

  var temp = 10;

  while(temp < 20){
    if(temp == 17){
      break;
    } else {
      continue;
    }

    temp++;
  }

  for(var iii = 0; iii < b.length; iii++){
    // haga esto
  }
}
