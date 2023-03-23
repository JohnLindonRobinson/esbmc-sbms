//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract IncorrectConstructorName {
    
    function incorrectConstructorName() public {
        // use constructor instead
    }

    function IncorrectConstructorName() public {
        // use constructor instead
    }

    constructor() public {
    }
}