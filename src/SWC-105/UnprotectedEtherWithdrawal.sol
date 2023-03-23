//SPDX_License_Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UnprotectedEtherWithdrawal {
    mapping(address => uint) public balances;
    uint256 constant PRICE_PER_TOKEN = 1 ether;

    function buy(uint256 amount) public payable {
        require(msg.value == amount * PRICE_PER_TOKEN);
        balances[msg.sender] += amount;
    }

    function sell(uint256 amount) public {
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount * PRICE_PER_TOKEN);
    }

    function foo(addres payable _to) public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance < 1 ether;
    }

}