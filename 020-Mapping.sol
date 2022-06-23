//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mapping
// How to declare a mapping (simple and nested)
// Set, get, delete

// array ->  ["alice", "bob", "charlie"]

// Make look up easy with mapping
// map -> ["alice": true, "bob":true, "charlie":true]

contract Mapping {
    mapping(address =>uint) public balances;

    mapping(address => mapping(address=> bool)) public isFriend; // nested mapping

    function examples() external {
        balances[msg.sender] =100;
        uint bal = balances[msg.sender];

        uint secondBal = balances[address(1)]; // return 0 

        balances[msg.sender] += 400; // 100 + 400 = 500

        delete balances[msg.sender]; // set to the default value 0

        isFriend[msg.sender][address(this)] = true;

    }

}