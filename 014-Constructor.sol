//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract ConstructorLesson {
    address public owner;
    uint public x;

    // WHEN YOU DEPLOY THIS YOU MUST PUT X VALUE OR YOUR CODE GIVES ERROR
    //RUN ONCE WHEN CONTRACT IS DEPLOYED
    constructor(uint _x) {
        owner = msg.sender;
        x =_x;
    }

}