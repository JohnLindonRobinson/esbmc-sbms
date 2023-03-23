//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract DelegatecallToUntrustedCallee {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function delegatecallToUntrustedCallee(address callee, bytes b) public {
        // Use delegatecall with caution
        require(callee.delegatecall(b));
    }
}