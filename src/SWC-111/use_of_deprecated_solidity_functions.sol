//SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

contract UseOfDeprecatedSolidityFunctions {
    function suicideContract() public {
        // Use selfdesturct(address) instead
        suicide(msg.sender);
    }

    function callcode() public {
        // Use call() instead
        msg.sender.callcode();
    }

    function getBlockHash(uint x) public returns(bytes32) {
        return block.blockhash(x);
    }

    function hash(uint x) public returns(bytes32) {
        return sha3(x);
    }

    function getGas() public returns(uint){
        return msg.gas;
    }

    function useThrow() public {
        throw;
    }

    function set_variables() public {
        constant c = 1;
        var v = 2;
    }

}