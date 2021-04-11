// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract ConstImmutExample {

    string constant SAMPLE = "Hello world";
    bytes32 constant MY_HASH = keccak256("Cody");

    uint constant SHAWN = 2**8 + 8;

    uint immutable someNumber;
    uint immutable whaleBalance;
    // message, send can be accessed fro immutable state variables
    address immutable owner = msg.sender;

    constructor(uint _someNumber, address _whale){
        // immutable values can be assigned in a constructor
        someNumber = _someNumber;
        // Assignments to immutables can access the blockchain data.
        whaleBalance = _whale.balance;
    }

}
