//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract ViewAndPure {

    // VIEW FUNCTIONS CAN READ DATA FROM BLOCKCHAIN
    // PURE FUNCTIONS DO NOT READ ANYTHING FROM BLOCKCHAIN

    uint public num;

    function viewFunc() external view returns(uint) {
        return num;
    }

    // ITS PURE BEACUSE ITS READ ONLY FUNCTION
    // IT DOESN'T MODIFY ANYTHING FROM BLOCKCHAIN
    // ALSO DOESNT READ ANY DATA FROM BLOCKCHAIN
    function pureFunc() external pure returns(uint){
        return 1;
    }

    // view func example
    function addToNum(uint x) external view returns(uint){
        return num + x;
    }

    // PURE func example
    function add(uint x, uint y) external pure returns(uint){
        return x+y;
    }

}