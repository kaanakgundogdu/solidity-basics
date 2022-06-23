//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForWhileLoops {

    function loops() external pure{
        for (uint i = 0; i<10; i++ ){
            //code
            if (i==3){
                continue; // the code after here not execute and go other value
            }
            //more code
            if(i==5){
                break; // break loop finish loop not run 6,7,...
            }
        }

        uint j=0;
        while(j<10){
            // code
            j++;
        }
    }

    function sum(uint _n) external pure returns(uint){
        uint s;
        // KEP THE NUMBER OF THE LOOPS SMALL. BIGGER LOOPS COST MUCH MORE GAS.
        for(uint i=1; i<=_n ; i++) {
            s+=i;
        }
        return s;
    }


}