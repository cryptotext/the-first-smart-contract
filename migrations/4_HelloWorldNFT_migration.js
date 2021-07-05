const HelloWorldNFT = artifacts.require("ERC721Sample/HelloWorldNFT.sol");

module.exports = function (deployer) {
  deployer.deploy(HelloWorldNFT);
};
