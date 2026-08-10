// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank{

    function deposit() public payable{

    }

    function get_balance() public view returns(uint){
        return address(this).balance;

    }
    function withdraw() public {
        payable(msg.sender).transfer(address(this).balance);
    }
}
