//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UninitializedStoragePointer {
    //TODO check if this is a bug in solc
    uint[] public a;
    uint[] public b;

    function f() public {
        uint[] storage c = a;
        a.push(1);
        b.push(2);
        assert(c.length == 1);
    }
}