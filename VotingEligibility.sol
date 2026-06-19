// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    function checkAge(uint age) public pure returns(string memory) {
        if(age >= 18) {
            return "Eligible";
        } else {
            return "Not Eligible";
        }
    }
}
