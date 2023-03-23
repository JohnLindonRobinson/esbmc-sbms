//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UnprotectedSelfDestructInstruction {
    function destroyAnyone() public {
        selfdestruct(msg.sender);
    }
}