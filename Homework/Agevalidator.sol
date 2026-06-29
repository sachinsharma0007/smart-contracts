// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Agevalidator {

   function isEligibleToVote(uint age) public pure returns (string memory) {
      
       require(age > 0, "Invalid age");

       if(age >= 18){
           return "Eligible to Vote";
       } else {
           return "Not Eligible to Vote";
       }
   }
}
