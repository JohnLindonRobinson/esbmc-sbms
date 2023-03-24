//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UnexpectedEtherBalance {

    function f() public payable {
        require(msg.value == 0);
        require(msg.sender.balance == 0);
    }

    function g() public payable {
        require(msg.value == 8);
        require(msg.sender.balance == 8);
    }

}