// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level_2_Solution {
        
    function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray){
        // Implement your solution here.
        sortedArray = unsortedArray;

        for (uint256 i = 0; i < sortedArray.length - 1; i++) {
            for (uint256 j = i + 1; j < sortedArray.length; j++) {
                if (sortedArray[j] < sortedArray[i]) {
                    uint256 temp = sortedArray[i];
                    sortedArray[i] = sortedArray[j];
                    sortedArray[j] = temp;
                }
            }
        }
    }
}