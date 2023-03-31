// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BadgerCoin is ERC20 {
    
    uint256 bcSupply = 1000000;
    uint256 bcDecimals = 18;

    constructor() ERC20("BadgerCoin", "BC") {
        _mint(msg.sender, bcSupply * (10 ** bcDecimals) );
    }
}

// contract deployed, verified and published on BNB testnet
// https://testnet.bscscan.com/address/0x7cc25886637447dce6c3b3b8d79d335e9c4c19e4#readContract
