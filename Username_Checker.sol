// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Username_Checker {

    mapping(bytes32 => bool) public usernames;

    // Register username
    function register(string memory _username)
        public
    {
        bytes32 hash = keccak256(
            abi.encodePacked(_username)
        );

        require(
            usernames[hash] == false,
            "Username already taken"
        );

        usernames[hash] = true;
    }

    // Check availability
    function isAvailable(string memory _username)
        public
        view
        returns(bool)
    {
        bytes32 hash = keccak256(
            abi.encodePacked(_username)
        );

        return usernames[hash] == false;
    }
}
