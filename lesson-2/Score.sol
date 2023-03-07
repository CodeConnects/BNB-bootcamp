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

    function setScore(uint256 _newScore) public {
        score = _newScore;
    }

}
