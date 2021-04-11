// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract EnumExample {

    // make and enum
    enum ShirtSize {SMALL, MEDIUM, LARGE};
    ShirtSize size;

    // use the enum
    // set an default value enum
    constructor() {
        size = ShirtSize.MEDIUM;
    }

    // get data from enum
    function getSize() public view returns(ShirtSize){
        return size;
    }

    
}
