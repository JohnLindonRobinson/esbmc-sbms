//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract DosWithBlockGasLimit {
    //TODO make this work

    address[] addresses;

    function addAddress(address addr) public {
        addresses.push(addr);
    }

    function callAll() public {
        for (uint i = 0; i < addresses.length; i++) {

        }
    }
}