//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract MissingProtectionAgainstSignatureReplayAttacks {
    //TODO make sure this is still broken
    mapping(bytes32 => bool) public processedHashes;

    function processMessage(bytes memory message, uint8 v, bytes32 r, bytes32 s) public {
        require(ecrecover(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", keccak256(message))), v, r, s) == msg.sender, "Invalid signature");
        require(!processedHashes[keccak256(message)], "Message already processed");
        
        // Process the message
        processedHashes[keccak256(message)] = true;
    }
}