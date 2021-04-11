// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.0;

contract TypesContract {

    // string
    string public myString = "Hello World";

    // Boolean
    bool public myBool = true;

    // Integer
    int32 public myInt = -7;

    // Unsigned integer
    uint32 public myUint = 1;

    // Ethereum network adresses
    // My metamask, if you are reading this, plz send eth
    address constant metamask = 0xc72a88e699096f5198abb60466570fb36742cda0;

    function retrieve() public pure returns(address) {
        return metamask;
    }

}
