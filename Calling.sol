// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

import "./Callable.sol";

contract Calling {

    address public callAddrress;

    function setAddress(address _callAdd) external {
        callAdd = _callAdd;
    }

    function callExternal() external view returns(uint) {
       ICallable callable = ICallable(callAdd);
       return callable.getScore();
    }
}
