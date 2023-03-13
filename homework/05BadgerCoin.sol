// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract BadgerCoin is ERC20 {
    
    uint256 bcSupply = 1000000;
    uint256 bcDecimals = 18;

    constructor() ERC20("BadgerCoin", "BC") {
        _mint(msg.sender, bc2Supply * (10 ** bcDecimals) );
    }
}
