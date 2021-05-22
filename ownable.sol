// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract Ownable {

    address payable public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier checkOwnership {
        require(msg.sender == owner);
        _; // run the rest of the function
    }

}
