//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract IntegerOverflowUnderflow {
    uint256 public counter = 0;

    function increment() public {
        counter += 1;
    }

    function decrement() public {
        counter -= 1;
    }

    function instanceOfIntegerOverflow() public {
        uint256 max = 2**256 - 1;
        uint256 overflow = max + 1;
    }

    function instanceOfIntegerUnderflow() public {
        uint256 min = 0;
        uint256 underflow = min - 1;
    }
}