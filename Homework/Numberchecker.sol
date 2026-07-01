// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Numberchecker{

    uint public number ;
    string public result ;

    function Setage (uint num) public {
        number = num ;

        if (num % 2 ==0) {
            result = "even";
        }
        else {
            result = "odd";
        }
    }
}
