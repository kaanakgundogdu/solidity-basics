//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Array dynamic or fixed size
// Initialization
// Insert(push), get, update, delete, pop, length
// Creating array in memory
// Returning arrray from funtion

contract Arrays {
    uint[] public nums = [1,2,3];
    uint[5] public fixedSizeNums = [4,5,6,7,8];

    function examples() external {
        nums.push(9); // [1,2,3,9]
        // you cannot push fixed size array
        uint x = nums[1];
        nums[2]= 888; // [1,2,888,4]
        delete nums[1]; // [1,0,888,4]
        // deleting element doesnt change the size of array
        nums.pop(); // [1,0,888]
        uint sizeOfNums = nums.length;

        //Creating array in memory
        uint[] memory memoryArray= new uint[](5); //Arrays in memory must be fixed size
        //memoryArray.pop; // gives you an error
        memoryArray[1]=123;    
    }

    // we want to copy of array on memory than return it
    // Not recommended returning array
    // if array is too big its use all of the gas
    function returnArray() external view returns(uint[] memory) {
        return nums;
    }

}