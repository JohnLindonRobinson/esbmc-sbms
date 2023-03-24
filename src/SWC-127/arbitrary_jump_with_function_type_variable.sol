//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract ArbitraryJumpWithFunctionTypeVariable {
    
    function foo() private {
            // Do something
    }

    function bar() internal { foo(); }

    struct S {
        function() internal f;
    }

    function main() public {
        S memory s;
        s.f = bar;
        assembly { mstore(s, add(mload(s), 1))}
        s.f();
    }
}