//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract TypographicalError {
    uint i = 1;

    function incrimentVulnerable() public{
        i =+1; // This reinitializes the variable
    }
}