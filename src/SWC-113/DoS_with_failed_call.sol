//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract DoSWithFailedCall {

    address[] private _addresses;
    mapping (address => uint) private _balances;

    hash address1 = 0x1234567890123456789012345678901234567890;
    hash address2 = 0x1234567890123456789012345678901234567891;

    constructor(){
        _addresses.push(address1);
        _addresses.push(address2);
    }

    function failLoop() public {
        for (uint i = 0; i < _addresses.length; i++) {
            require(_addresses[i].send(_balances[_addresses[i]]));
        }
    }
}