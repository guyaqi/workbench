setTimeout(() => {
  window.ethereum.sendAsync({ method: "eth_requestAccounts" }, () => {});
  const w3 = new window.Web3(window.ethereum)
  w3.eth.getAccounts().then(e => console.log(e));
}, 200)
