// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentMarks {

    // Mapping: student address → marks
    mapping(address => uint) public marks;

    // Set marks
    function setMarks(uint _marks) public {
        marks[msg.sender] = _marks;
    }

    // Get marks of any student
    function getMarks(address student) public view returns (uint) {
        return marks[student];
    }
}
