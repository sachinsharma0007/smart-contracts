// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Marks_Set{

    address owner;
    uint marks;
  
//   constructor (){
//     owner = msg.sender;
//   }

  function set_marks(uint _marks) external{
    require(_marks >= 0,"No Negative Marking");
    marks = _marks;
  }

  function get_marks() external view returns (uint) {
    return marks;
  }


}
