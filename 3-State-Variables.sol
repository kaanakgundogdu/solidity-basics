//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract StateVariables {

    uint public myNumber = 123; // Data stroed in this variable stored in blockchain

    function foo() external {
        uint notStateVariable=5656; // Local variable it only exist while this function executed.
        // After functions execute this variable gone.
    }
}