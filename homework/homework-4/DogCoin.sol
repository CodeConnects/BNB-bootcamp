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

    // 11. Create a constructor to initialise the state of the contract
    // and within the constructor, store the owner's address.
    constructor() {
        totalSupply = 2000000;
        owner = msg.sender;
    }

    // 9. Next, create a modifier which only allows an owner to execute certain functions.
    modifier onlyOwner {
        // '_' is where the function body is inserted only if the condition of the modifier are satisfied
        require(msg.sender == owner, "must be the owner to execute this function");
        _;
    }

    // 6. Make a public function that returns the total supply.
    function showTotalSupply() public view returns(uint256) {
        return totalSupply;
    }

    // 7. Make a public function that can increase the total supply in steps of 1000.
    // 10. Make your change total supply function public, but add your modifier so that only the owner can execute it.
    function increaseTotalSupply() onlyOwner public {
        totalSupply = totalSupply + 1000;
    }
}
