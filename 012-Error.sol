//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;



// require, revert, assert
// -gas refund, state updates are reverted
// custon error - save gas

contract ErrorHandle {

    function testRequire(uint r) public pure {
        require(r <= 10, "r > 10");
        // code
    }

    function testRevert(uint p) public pure {
        if(p>10){
            revert("i > 10");
        }
        //code
    }

    uint num=123;

    function testAssert() public view{
        // USE ASSERT CHECK FOR CONDITIONS THAT SHOULD ALLWAYS BE TRUE
        assert(num == 123); // if this false gives error
    }

    function foo() public {
        // accidentally update num
        num += 1;
    }

    error MyError(address caller, uint u);

    function testCustomError(uint u) public view {
        // require (u <= 10, "u > 10" );// LONGER ERROR MESSAGE THE MORE GAS USE

        if(u > 10){
            revert MyError(msg.sender,u);
        }

        // code
    }

}