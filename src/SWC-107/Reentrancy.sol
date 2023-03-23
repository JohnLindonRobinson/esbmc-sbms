// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract Reentrancy {

    mapping (address => uint) public balances;

    function donate(address _to) public payable {
        balances[_to] += msg.value;
    }

    function withdraw(uint _amount) public {
        if (balances[msg.sender] >= _amount) {
            (bool result, ) = msg.sender.call{value: _amount}("");
            require(result);
            balances[msg.sender] -= _amount;
        }
    }

    function getBalance(address to) public view returns (uint) {
        return balances[to];
    }
}