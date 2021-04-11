pragma solidity ^0.7.0;

contract Calculator{

  // state variable;
  uint firstNumber;
  uint secondNumber;
  uint result;

  constructor(){
    count = 10;
  }

  function calculate() public view returns(uint){

    
    return result;
  }

  //
  function addNumber(uint number) public {
    count = count + number;
  }

  function subtractNumber(uint number) public {
    count = count - number;
  }
}
