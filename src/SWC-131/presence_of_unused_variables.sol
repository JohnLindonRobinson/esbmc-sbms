//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract PresenceOfUnusedVariables {
    uint8 a = 1;

    function f() public {
        uint8 b = 2;
        uint8 c = 3;
    }
}