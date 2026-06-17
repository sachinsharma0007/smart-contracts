//this is must for Validation process While password checking
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Password {
    string private password = "1234";

    function login(string memory _pass) public view returns(string memory) {
        if(keccak256(bytes(_pass)) == keccak256(bytes(password))) {
            return "Access Granted";
        } else {
            return "Access Denied";
        }
    }
    function getHash() public view returns(bytes32) {
    return keccak256(bytes(password));
}
}
