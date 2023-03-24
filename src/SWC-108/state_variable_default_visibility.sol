//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract StateVariableDefaultVisibility {
    uint public a;
    uint internal b;
    uint private c;
    uint d; // default visibility is public

    function f() public {
        a = 1;
        b = 2;
        c = 3;
        d = 4;
    }
}