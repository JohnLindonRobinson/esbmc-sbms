//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UninitializedStoragePointer {
    // Note: As of compiler version 0.5.0 and higher this issue has been
    // systematically resolved as contracts with uninitialised storage
    // pointers do no longer compile.
    uint[] public a;
    uint[] public b;

    function f() public {
        uint[] storage c = a;
        a.push(1);
        b.push(2);
        assert(c.length == 1);
    }
}