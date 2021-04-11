// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

// A simple calculator, written in solidity

contract Calculator{

    // state variable;
    uint public firstNumber;
    uint public secondNumber;
    uint public result = 0;

    function setFirstFactor(uint number) public {
        firstNumber = number;
    }

    function setSecondFactor(uint number) public {
        secondNumber = number;
    }

    function multiply() public {
        result = firstNumber * secondNumber;
    }

    function divide() public {
        result = firstNumber / secondNumber;
    }

    function subtract() public {
        result = firstNumber - secondNumber;
    }

    function add() public {
        result = firstNumber + secondNumber;
    }

}
