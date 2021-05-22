// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

// There are 3 data locations:
// Storage is persistent throughout the contract
// memory is local to functions
// calldata is temporary for the contract
// use external functions in order to use calldata memory
// calldata is immutable and has to be copied to a new location

contract ValueTypes {

    uint[] public x = [1,2,3,4,5]

    function realTest() external {
        _changeSomething(x);
    }

    function _changeSomething(uint[] calldata _x) external return(uint[] memory) {
        uint[] memory[] _y = _x;
        _y[0] = 42;
        return _input;
    }

}
