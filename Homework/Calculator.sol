// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator{

    function A() public pure returns (int ) {
        return 10 ;
    }
     function B() public pure returns (int ) {
        return 20 ;
    }
    function sub() public pure returns (int) {
        return A() - B() ;
    }
    function add() public pure returns (int) {
        return A() + B() ;
    }
    function mul() public pure returns (int) {
        return A() * B() ;
    }
    function div() public pure returns (int) {
        return A() / B() ;
    }
    function per() public pure returns (int) {
        return A() % B() ;
    }

    
}
