//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// function  modifier - reuse code before and / or after function
// Basic, inputs, sandwich

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused=_paused;         
    }

    // WE USE SAME REQUIRE FUNCTION 2 TIMES CAN USE FUNCTION MODIFIER FOR MAKE THIS SIMPLE
    function inc() external{
        require(!paused, "paused");
        count+= 1;
    }

    function dec() external {
        require(!paused,"paused");
        count -= 1;

    }

    // with FUNCTION MODIFIER
    modifier whenNotPaused(){
        require(!paused,"paused");
        _;
    }

    // do the same thing
    function incNew() external whenNotPaused {
        count+= 1;
    }

    function decNew() external whenNotPaused {
        count -= 1;

    }

    // FUNCTION MODIFIER with inputs
    modifier cap(uint _x){
        require ( _x < 100 , "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    // FUNCTION MODIFIER with sandwich
    modifier sandwich(){
        //code here
        count+=10;
        _;
        //more code here
        count *=2;
    }

    function sandwichExample() external sandwich{
        count+=1;
    }



}