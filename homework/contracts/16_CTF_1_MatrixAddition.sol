// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/*
  interface Isolution1 {
    function solution(uint256[2] calldata firstArray, uint256[2] calldata secondArray) external pure returns (uint256[2] calldata finalArray);
  }
*/

contract Level_1_Solution {

    function solution(uint256[2][2] calldata x, uint256[2][2] calldata y) external pure returns (uint256[2][2] memory finalArray) {
        
        // Loop through each element of the matrices and add them together
        for (uint256 i = 0; i < 2; i++) {
            for (uint256 k = 0; k < 2; k++) {
                finalArray[i][k] = x[i][k] + y[i][k];
            }
        }
    }
}