//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract LackOfProperSignatureVerification {
    mapping (bytes32 => bool) public processedMessages;

    function processMessage(bytes memory message, bytes memory signature) public {
        require(!processedMessages[getMessageHash(message)], "Message already processed");
        address signer = recoverSigner(message, signature);
        require(signer == msg.sender, "Invalid signature");

        // Process the message...

        processedMessages[getMessageHash(message)] = true;
    }

    function getMessageHash(bytes memory message) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(message));
    }

    function recoverSigner(bytes memory message, bytes memory signature) internal pure returns (address) {
        bytes32 messageHash = getMessageHash(message);
        bytes32 r;
        bytes32 s;
        uint8 v;
        
        assembly {
            r := mload(add(signature, 32))
            s := mload(add(signature, 64))
            v := byte(0, mload(add(signature, 96)))
        }

        return ecrecover(messageHash, v, r, s);
    }
}
