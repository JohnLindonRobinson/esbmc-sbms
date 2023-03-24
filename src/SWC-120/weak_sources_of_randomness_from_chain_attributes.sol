//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;


contract WeakSourcesOfRandomnessFromChainAttributes {

    // User wins if a 6 is rolled

    function generateRandomNumber_Timestamp() public view returns (uint256) {
        // Vulnarable since a miner can provide a timestamp of their choosing within 14 seconds of the block timestamp
        uint256 randomNumber = block.timestamp % 6 + 1;
        return randomNumber;
    }

    function generateRandomNumber_Difficulty() public view returns (uint256) {
        uint256 randomNumber = block.difficulty % 6 + 1;
        return randomNumber;
    }

    function generateRandomNumber_prevrandao() public view returns (uint256) {
        uint256 randomNumber = block.prevrandao % 6 + 1;
        return randomNumber;
    }

    function generateRandomNumber(uint8 choice) private view returns (uint256) {
        if (choice == 1) {
            return generateRandomNumber_Timestamp();
        } else if (choice == 2) {
            return generateRandomNumber_Difficulty();
        }   
        return generateRandomNumber_prevrandao();
    }

    function takeBet1Eth(uint8 choice) public payable {
        require(msg.value == 1 ether, "You must bet 1 ETH");
        uint256 randomNumber = generateRandomNumber(choice);
        if (randomNumber == 6) {
            payable(msg.sender).transfer(2 ether);
        }
    }

}