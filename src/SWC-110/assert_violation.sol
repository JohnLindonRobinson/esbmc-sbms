//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract AssertViolation {
    uint256 private p;
    
    constructor (uint256 x) {
        assert(x > 0);
        p = x;
    }
    
    function run() public {
        assert(p > 0);
    }

    function foo() public pure {
        assert(false);
    }
}
