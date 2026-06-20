// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Random {
    
uint public random = uint(
   keccak256(
       abi.encodePacked(
           block.timestamp,
           msg.sender
       )
   )
);
}
