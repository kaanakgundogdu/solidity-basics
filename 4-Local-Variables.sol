//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract StateVariables {

    uint public i;
    bool public b;
    address public myAddress;


    function foo() external {
        uint x=5656; 
        bool f = false;
        
        //more code
        
        // LOCAL VARIABLES INSIDE THE FUNCTION ONLY AVAIBLE WHLIE FUNCTION EXECUTE
        // AFTER FUNCTION EXECUTE THIS VARIABLES GONE.
        x+=456;
        f=true;

        // STATE VARIABLES CAN STORE THE CHANGE AFTER EXECUTION OF THE FUNCTION
        i=123;
        b=true;
        myAddress=address(1);
    }
}