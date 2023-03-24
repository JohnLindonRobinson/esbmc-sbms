//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract FunctionDefaultVisibility {
    // Functions that do not specify visibility default to public.
    // This can lead to vulnerabilities if the function is not
    // intended to be public.

    function publicFunction() public {
    }

    function privateFunction() private {
    }

    function internalFunction() internal {
    }

    function externalFunction() external {
    }

    function defaultVisibility() {
        // This function is public by default.
    }
}