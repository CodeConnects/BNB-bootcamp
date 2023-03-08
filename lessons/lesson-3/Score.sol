// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Score {
    
    /* 
    *  all variables in Solidity need a datatype
    *  256 is the maximum size of an unisgned integer
    *  so uint is the same as uint256
    *  but you can also make them smaller
    */
    uint256 public score;
    address owner;

    /*
    *  be sure to add a visibility to all function
    *  otherwise they will default to public and throw a warning
    *  options are public, private, internal and external
    */
    
    /*
    *  by using inferred function, we save memory and gas
    *  this getScore function can be inferred by making score variable public
    function getScore() public view returns (uint256) {
        return score;
    }
    */

    modifier onlyOwner {
        //if (msg.sender == owner) {
            // '_' means 'execute method that this modifier is applied to'
            // so it is like modifier is wrapping around the function is modfies
        //    _;
        //}

        // this pattern is more common than the example above
        require(msg.sender==owner,"not allowed");
        _;
    }
    
    /*
    *  set inital state of the contract
    *  this is run once at deployment
    *  does not get included in bytecode
    */
    constructor() {
        score = 5;

        // this is the person who is deploying the contract since it comes from constructor
        owner = msg.sender;

    }

    function setScore(uint256 _newScore) public onlyOwner {
        score = _newScore;
    }

}
