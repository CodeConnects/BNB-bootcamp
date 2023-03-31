// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

/*
  interface Isolution1 {
    function solution(uint256[2] calldata firstArray, uint256[2] calldata secondArray) external pure returns (uint256[2] calldata finalArray);
  }
*/

contract Level_1_Solution {
  function solution(uint256[2][2] calldata x, uint256[2][2] calldata y) external pure returns (uint256[2][2] memory finalArray) {
    // Loop through each element of the matrices and add them together
    /*for (uint256 i = 0; i < 2; i++) {
        for (uint256 k = 0; k < 2; k++) {
            finalArray[i][k] = x[i][k] + y[i][k];
        }
    }*/

    // same loop but with inline assembly
    assembly {
      let i := 0
      let k := 0

      for { } lt(i, 2) { } {
        for { } lt(k, 2) { } {
          let x_i_k := mload(add(add(x, mul(i, 32)), mul(k, 32)))
          let y_i_k := mload(add(add(y, mul(i, 32)), mul(k, 32)))
          let sum := add(x_i_k, y_i_k)
          mstore(add(add(finalArray, mul(i, 64)), mul(k, 32)), sum)
          k := add(k, 1)
        }
        i := add(i, 1)
        k := 0
      }
    }
  }
}
