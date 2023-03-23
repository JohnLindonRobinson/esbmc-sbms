//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract StateVariableDefaultVisibility {
    uint public a = 1;
    uint internal b = 2;
    uint private c = 3;
    uint d = 4;
}