//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract IterableMapping {
    mapping(address =>uint) public balances;
    mapping(address=> bool) public inserted;
    address[] public keys;

    // with this function we can get size of mapping and iterate all keys
    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if (!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns(uint) {
        return keys.length;
    }

    // how to get first element of mapping
    function getFirst() external view returns(uint){
        return balances[keys[0]];
    }

    // how to get last element of mapping
    function getLast() external view returns(uint){
        return balances[keys[keys.length-1]];
    }
    
    // how to get i th element of mapping
    function getLast(uint _i) external view returns(uint){
        return balances[keys[_i]];
    }
}