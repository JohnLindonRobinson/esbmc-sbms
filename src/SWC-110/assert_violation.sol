//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract AssertViolation {
    function assertViolation() public {
        assert(false);
    }

    constructorViolation c = new constructorViolation(0);

    function constructorViolation() public {
        assert(c.returns_a() == 1);
    }

    function constructorViolation2() public {
        assert(c.returns_a() == 2);
    }
}

contract constructorViolation {

    uint private a;
    constructor(uint _a) {
        a = _a;
    }
    
    function returns1() public pure returns (uint) {
        return 1;
    }

    function returns_a() public view returns (uint) {
        return a;
    }
}