//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data types - values and references

contract ValueTypes{

    bool public isItTrue=true;
    uint public unsignedInteger= 123; //uint = uint256 0 to (2**256) - 1
                                      //       uint8 0 to (2**8) - 1
                                      //       uint16 0 to (2**16) - 1
    int public i = -123; // int = in256   -2**255 to 2**255 - 1   
                         //       in128   -2**127 to 2**127 - 1 

    int public minInt= type(int).min;
    int public maxInt= type(int).max;
    address public addr= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32= 0x37cdb3d07c3b889df3f18af359010961d8601dabc06d71a820d4c160ec80b035;
}
