// sync request
try {
  console.log(web3.eth.getBlock(48));
} catch(e) {
  console.log(e)
};

// async request
web3.eth.getBlock(48, function(error, result){
  if(!error)
    console.log(result)
  else
    console.log(error);
});
