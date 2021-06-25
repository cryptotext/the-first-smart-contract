const HelloWorld = artifacts.require("HelloWorld/HelloWorld.sol");

module.exports = function(deployer) { deployer.deploy(HelloWorld); };
