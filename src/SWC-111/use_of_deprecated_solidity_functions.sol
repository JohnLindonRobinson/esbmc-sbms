// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UseOfDeprecatedSolidityFunctions {
    function suicideContract() public {
        // Use selfdesturct(address) instead
        address payable addr = payable(address(msg.sender));

        selfdestruct(addr);
    }

    function callcode() public {
        // Use call() instead
        msg.sender.call("");

    }

    function getBlockHash(uint x) public returns(bytes32) {
        return blockhash(x);
    }

    function hash(uint256 x) public returns(bytes32) {
        bytes32 b = bytes32(uint256(x));
        bytes memory d3 = abi.encodePacked(b);


        return keccak256(d3);
    }

    function getGas() public returns(uint){
        return gasleft();
    }

    function useThrow() public {
        revert("an error occured");
    }

    function set_variables() public {
        uint c = 1;
        uint v = 2;
    }

}
