// SPDX-License-Identifier: None

pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;

    // 1. Add a variable to hold the address of the deployer of the contract
    address owner;

    // 2. Update that variable with the deployer's address when the contract is deployed.
    constructor() {
        owner = msg.sender;
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}
