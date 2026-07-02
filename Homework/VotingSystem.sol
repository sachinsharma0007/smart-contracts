// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {

    constructor() {
        owner = msg.sender;
    }

    struct voters{
        string name;
        uint age;
        string party;
    }

    mapping(address => voters) public Voter_address;

    modifier onlyowner() {
        require(msg.sender == owner,"not owner");
        _;
    }

    address public owner;

    address[] public voter_list;

    function Details(string memory name, uint age) public {
        require(age >= 18, "Not eligible to vote");
        Voter_address[msg.sender] = voters(name, age,"");
        voter_list.push(msg.sender);
    }

    function BJP() public {
        Voter_address[msg.sender].party = "BJP";
    }

    function Congress() public {
        Voter_address[msg.sender].party = "Congress";
    }

    function AAP() public {
        Voter_address[msg.sender].party = "AAP";
    }

    function INLD() public {
        Voter_address[msg.sender].party = "INLD";
    }
}
