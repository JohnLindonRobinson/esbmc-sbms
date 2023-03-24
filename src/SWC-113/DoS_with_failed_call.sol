//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract DoSWithFailedCall {

    address payable[] private _addresses;
    mapping (address => uint) private _balances;

    address payable address1 = payable(address(0x1));
    address payable address2 = payable(address(0x2));


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