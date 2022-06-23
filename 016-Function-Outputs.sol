//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// RETURN MULTIPLE OUTPUTS
// NAMED OUTPUTS
// DESTRUCTING ASSIGNMENTS

contract FunctionOuptuts {

    function returnMany() public pure returns(uint, bool) {
        return (1,true);
    }

    
    function named() public pure returns(uint x, bool b) {
        return (1,true);
    }
    
    // save little bit gas
    function assigned() public pure returns(uint x, bool b) {
        x=1;
        b=true;
    }

    function destructingAssignment() public pure {
        (uint firstOutput, bool secondOutput) = returnMany();
        // if you only want secod output
        (, bool _secondOutput) = returnMany();
    }



}