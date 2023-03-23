//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract ShadowingStateVariables {
    uint public x = 1;
    uint public y = 2;

    function f() public {
        uint x = 3;
        x = x + 1; // this is fine, it shadows the state variable
        y = x; // this assigns to the state variable
        y = y + 1; // this is fine, it increments the state variable
    }
}