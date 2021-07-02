pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HelloWorldToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("HelloWorldToken", "HWT") {
        _mint(msg.sender, initialSupply);
    }
}
