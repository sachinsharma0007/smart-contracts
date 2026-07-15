// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract blocknumber{

    uint  public deployNumber;
   
   constructor() {
    deployNumber = block.number;
   }

    function blockpassed() public view returns (uint count) {
        return (block.number - deployNumber);
    }



}
