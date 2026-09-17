// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomNumber {

    function generateRandom() public view  returns(uint)
    {
        uint random = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender)));
        return (random % 100) + 1;
    }

    
}

