// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomNumber {

    function generateRandom() public view  returns(uint)
    {
        uint random = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender)));
        return (random % 100) + 1;
    }

    function practice() public view returns (bytes32) {
    bytes32 _hash = keccak256(abi.encodePacked(block.timestamp, msg.sender));
    return _hash;
    }
}

