// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Grade {
    function getGrade(uint marks) public pure returns(string memory) {
        if(marks >= 90) {
            return "A";
        } else if(marks >= 75) {
            return "B";
        } else if(marks >= 50) {
            return "C";
        } else {
            return "Fail";
        }
    }
}
