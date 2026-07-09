// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank{

    address public owner;

    constructor() {
        owner = msg.sender;
    }

     modifier onlyowner () {
        require(msg.sender == owner, "You are not the Owner ");
        _;
    }

    struct details{
        string name;
        uint balance;
    }

    mapping(address => details) Get;

    function deposit(string memory name, uint amount) public {
        require(amount > 500,"add above than INR 500");
        Get[msg.sender].name = name;
        Get[msg.sender].balance += amount;
    }

    function withdraw(string memory name, uint amount) public {
        require(amount > 100,"Not met Minimum withdraw amount");
        require(Get[msg.sender].balance >= amount, "Insufficient balance");
        Get[msg.sender].name = name;
        Get[msg.sender].balance -= amount;
    }

    function get_balance(address user) public view onlyowner returns (string memory, uint) {
        return (Get[user].name, Get[user].balance);
    }
}
