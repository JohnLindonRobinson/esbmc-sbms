//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract WriteToArbitraryStorageLocation {
    uint[] private array;
    address private owner;

    constructor() {
        owner = msg.sender;
        array = new uint[](0);
    }

    function () public payable {}

    function pushToArray(uint value) public {
        array.push(value);
    }

    function popFromArray() public {
        array.pop();
    }

    function pushToArraySafe(uint value) public {
        require(msg.sender == owner);
        array.push(value);
    }


    function popFromArraySafe() public {
        require(msg.sender == owner);
        array.pop();
    }
}