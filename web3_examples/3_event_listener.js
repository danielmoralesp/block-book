var event = proof.logFileAddedStatus(null, {
  fromBlock: 0,
  toBlock: "latest"
});

event.get(function(error, result){
  if(!error){
    console.log(result);
  } else {
    console.log(error);
  }
})

event.watch(function(error, result){
  if(!error){
    console.log(result.args.status);
  } else {
    console.log(error);
  }
})

setTimeout(function(){
  event.stopWatching();
}, 60000)

var events = proof.allEvents({
  fromBlock: 0,
  toBlock: "latest"
})

events.get(function(error, result){
  if(!error){
    console.log(result);
  } else {
    console.log(error);
  }
})

events.watch(function(error, result){
  if(!error){
    console.log(result.args.status);
  } else {
    console.log(error);
  }
})

setTimeout(function(){
  events.stopWatching();
}, 60000)
