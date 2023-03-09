// 3. Before the pragma version, add a license identifier
// SPDX-License-Identifier: UNLICENSED

// 2. Define the pragma compiler version to 0.8.18
pragma solidity 0.8.18;

// 4. Create a contract called DogCoin.
contract DogCoin {
    // 5. Create a variable to hold the total supply, with an initial amount of 2 million
    uint256 totalSupply;

    // 8. Declare an address variable called owner . this address will be allowed to change the total supply
    address owner;

    constructor() {
        totalSupply = 2000000;
        owner = msg.sender;
    }

    // 6. Make a public function that returns the total supply.
    function showTotalSupply() public view returns(uint256) {
        return totalSupply;
    }

    // 7. Make a public function that can increase the total supply in steps of 1000.
    function increaseTotalSupply() public {
        totalSupply = totalSupply + 1000;
    }

}
