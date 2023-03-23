//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract AuthorizationThroughTxOrigin {
    address owner;
    
    constructor() {
        owner = msg.sender;
    }

    function sendTo(address payable _to) public {
        require(tx.origin == owner);
        _to.transfer(1 ether);
    }
}