// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CourseEnrollment {

    struct Student{
        string name;
        uint age;
        string university;
        string course;
    }

    mapping(address => Student) public Student_address;
    address[] public students;

    function set_details(string memory name, uint age ,  string memory university) public {
        Student_address[msg.sender] = Student(name, age, university,"0");
        students.push(msg.sender);
    }

    function AI() public {
        Student_address[msg.sender].course = "AI";
    }

    function Web_Development() public {
        Student_address[msg.sender].course = "Web_Development";
    }

    function Blockchain() public {
        Student_address[msg.sender].course = "Blockchain";
    }

    function Datascience() public {
        Student_address[msg.sender].course = "Datascience";
    }

    // function Course_Name ()

    function get_all_students() public view returns(address[] memory){
        return students;
    }
}
