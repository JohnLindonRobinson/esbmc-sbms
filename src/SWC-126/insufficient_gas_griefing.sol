//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract InsufficientGasGriefing {
    
    function callAnotherContract(uint256 amount) public payable {
        require(msg.value == amount);
        (bool result, ) = msg.sender.call{gas: 1000}(abi.encodeWithSignature("processTransaction()"));
        require(result); 
    }
}
