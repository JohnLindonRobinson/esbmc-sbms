//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract ReadablePrivateVariables {
    uint256 private _privateVariable = 42;

    function setPrivateVariable(uint256 value) public {
        _privateVariable = value;
    }

    function getPrivateVariable() public view returns (uint256) {
        return _privateVariable;
    }
}