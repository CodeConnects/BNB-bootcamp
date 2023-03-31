// SPDX-License-Identifier: None

pragma solidity 0.8.18;


contract BootcampContract {

    uint256 number;

    // 1. Add a variable to hold the address of the deployer of the contract
    address owner;

    // 2. Update that variable with the deployer's address when the contract is deployed.
    constructor() {
        owner = msg.sender;
    }
    
    // 3. Write an external function that returns:
    function returnOwner() external view returns (address) {
        // 1. Address 0x000000000000000000000000000000000000dEaD if called by the deployer
        if (msg.sender == owner) {
            return 0x000000000000000000000000000000000000dEaD;
        } else {
            // 2. The deployer's address otherwise
            return owner;
        }
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}
