//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// GAS = 21442 gas 
contract Constants {

    // Declaration of normal state variable
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 

    // Declaration of Constant variable
    address public constant MY_ADDRESS = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    uint public constant MY_UINT= 333;
}

// DECLARING STATE VARIABLES AS CONSTANT VARIABLES SAVE GAS.

// GAS = 23553 gas
contract Var {
    // REGULAR STATE VARIABLE
    address public MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 

}