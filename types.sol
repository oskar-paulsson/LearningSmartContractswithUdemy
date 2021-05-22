// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract ValueTypes {

    uint[] public x = [1,2,3,4,5]

    function realTest() external {
        _changeSomething(x);
    }

    function _changeSomething(uint[] storage _input) internal return(uint[] memory) {
        _input[0] = 42;
        return _input;
    }

}
