//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Counter {

    uint public count;

    function increment() external{
        count+=1;
    }

    function decrement() external {
        if(count==0)
            return;
        count-=1;
        
    }


}