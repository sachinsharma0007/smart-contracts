// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Incremt {

    uint public count = 0 ;

    function increment() public {
        count = count + 1;
    }

    function decrement () public {
        count = count - 1;
        require (count > 0 , "count cannot be negative");  //count cannot be negative - this is not showing
    }
    function reset () public {
        count = 0;
    }
}
