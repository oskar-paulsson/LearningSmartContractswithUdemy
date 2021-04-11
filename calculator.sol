pragma solidity ^0.7.0;

// A simple calculator, written in solidity

contract Calculator{

    // state variable;
    uint firstNumber;
    uint secondNumber;
    uint result;

    constructor() {
        firstNumber = 0;
        secondNumber = 0;
        result = 0;
    }

    function setFirstFactor(uint number) public {
        firstNumber = number;
    }

    function setSecondFactor(uint number) public {
        secondNumber = number;
    }

    function multiply() public {
        result = firstNumber * secondNumber;
        getCount();
    }

    function divide() public {
        result = firstNumber / secondNumber;
        getCount();
    }

    function subtract() public {
        result = firstNumber - secondNumber;
        getCount();
    }
    
    function add() public {
        result = firstNumber + secondNumber;
        getCount();
    }
    
    function getCount() public view returns(uint){
        return result;
    }
    
}
