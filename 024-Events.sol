//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract Events {
    event Log(string message, uint val);
    // up to 3 parameters can use as indexed
    event IndexedLog(address indexed sender, uint val);

    function examples() external {
        emit Log("Foo",1234);
        emit IndexedLog(msg.sender,999);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessgae(address _to, string calldata _message) external {
        emit Message(msg.sender, _to,_message);
    }

}
