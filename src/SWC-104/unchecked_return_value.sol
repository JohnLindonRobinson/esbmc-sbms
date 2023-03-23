//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UncheckedReturnValue {
    function callchecked(address callee) public {
        require(callee.call());
    }

    function callunchecked(address callee) public {
        callee.call();
    }
}