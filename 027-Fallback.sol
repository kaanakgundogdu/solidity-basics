//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


/*
Fallback executed when
- function deoesn't exist
- directly send ETH
*/

contract Fallback {

    event Log(string func, address sender, uint value, bytes data);

    // mostly used enable smart contract receive eth
    fallback() external payable {
        emit Log("fallback", msg.sender,msg.value, msg.data);
    }

    // when data is empty
    // if there is no receive function code calls fallback function.
    receive() external payable{
        emit Log("receive", msg.sender,msg.value, "");

    }

}