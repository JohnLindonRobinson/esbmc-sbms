//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract MessageCallWithHardcodedGasAmount {

    function call(address callee) public {
        callee.call{gas: 100000}("");
    }

    function call2(address callee) public {
        callee.call.value(0).gas(100000)("");
    }

    function call3(address callee) public {
        callee.call{gas: 100000, value: 0}("");
    }
}