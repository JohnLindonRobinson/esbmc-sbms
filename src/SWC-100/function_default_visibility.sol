//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract FunctionDefaultVisibility {
    // Functions that do not specify visibility default to public.
    // This can lead to vulnerabilities if the function is not
    // intended to be public.

    function publicFunction() public {
        emit LogFunctionCall("publicFunction");
    }

    function privateFunction() private {
        emit LogFunctionCall("privateFunction");
    }

    function internalFunction() internal {
        emit LogFunctionCall("internalFunction");
    }

    function externalFunction() external {
        emit LogFunctionCall("externalFunction");
    }

    function defaultVisibility() {
        emit LogFunctionCall("defaultVisibility");
    }
}