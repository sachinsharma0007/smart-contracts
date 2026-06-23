// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMarks_Set {
    function set_marks(uint _marks) external;
    function get_marks() external view returns (uint);
}

contract Teacher_Marks_Set{

    IMarks_Set public Teacher;

    constructor(address Contract_address) {
        Teacher = IMarks_Set(Contract_address);
    }

    function Update_marks(uint _marks) public {
        Teacher.set_marks(_marks);
    }

    function Get_marks() public view returns(uint) {
        return Teacher.get_marks();
    }

}
