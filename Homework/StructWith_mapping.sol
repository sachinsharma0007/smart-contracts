// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student_data {

    struct student {
        string name;
        uint age;
        uint marks;
    }
    
    mapping (address=> student) public student_data;

    function setStudent( string memory name,uint age,uint marks) public {
        
        student_data[msg.sender] = student(name, age, marks);
    }

}
