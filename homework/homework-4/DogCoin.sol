// 3. Before the pragma version, add a license identifier
// SPDX-License-Identifier: UNLICENSED

// 2. Define the pragma compiler version to 0.8.18
pragma solidity 0.8.18;

// 4. Create a contract called DogCoin.
contract DogCoin {
    // 5. Create a variable to hold the total supply, with an initial amount of 2 million
    uint256 totalSupply;

    constructor() {
        totalSupply = 2000000;
    }

    // 6. Make a public function that returns the total supply.
    function showTotalSupply() public view returns(uint256) {
        return totalSupply;
    }

}
