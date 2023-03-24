//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract HashCollisionsWithMultipleVariableLengthArguments {

    address[] public array1;
    address[] public array2;

    function f() public {
        bytes32 hash = keccak256(abi.encodePacked(array1, array2));
    }

}