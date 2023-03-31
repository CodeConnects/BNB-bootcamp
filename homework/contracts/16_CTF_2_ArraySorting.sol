// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level_2_Solution {
    function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray) {
        sortedArray = unsortedArray;
        
        for (uint256 i = 0; i < sortedArray.length - 1; i++) {
            uint256 minIndex = i;
            for (uint256 j = i + 1; j < sortedArray.length; j++) {
                if (sortedArray[j] < sortedArray[minIndex]) {
                    minIndex = j;
                }
            }
            if (minIndex != i) {
                uint256 temp = sortedArray[i];
                sortedArray[i] = sortedArray[minIndex];
                sortedArray[minIndex] = temp;
            }
        }
        
        // same for loop but trying inline assembly to save on gas
        /*
        assembly {
            let sortedArrayPtr := add(sortedArray, 32)
            let length := mload(sortedArray)
            for {let i := 0} lt(i, sub(length, 1)) {i := add(i, 1)} {
                let minIndex := i
                for {let j := add(i, 1)} lt(j, length) {j := add(j, 1)} {
                    let jPtr := add(sortedArrayPtr, mul(j, 32))
                    let minIndexPtr := add(sortedArrayPtr, mul(minIndex, 32))
                    let minIndexVal := mload(minIndexPtr)
                    let jVal := mload(jPtr)
                    if lt(jVal, minIndexVal) {
                        minIndex := j
                    }
                }
                if eq(minIndex, i) {
                    continue
                }
                let iPtr := add(sortedArrayPtr, mul(i, 32))
                let minIndexPtr := add(sortedArrayPtr, mul(minIndex, 32))
                let temp := mload(iPtr)
                mstore(iPtr, mload(minIndexPtr))
                mstore(minIndexPtr, temp)
            }
        }
        */
    }
}