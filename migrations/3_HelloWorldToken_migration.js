const HelloWorldToken = artifacts.require("ERC20Sample/HelloWorldToken.sol");

module.exports = function (deployer) {
  deployer.deploy(HelloWorldToken, 1000);
};
