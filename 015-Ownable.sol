//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Ownlable {

    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner!");
        _;
    }

    function setOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), " Invalid address");
        owner = newOwner;
    }

    function onlyOwnerCanCallThisFunction() external onlyOwner {
        //code
    }

    function anyOneCanCallThisFunction() external {
        //code
    }
}