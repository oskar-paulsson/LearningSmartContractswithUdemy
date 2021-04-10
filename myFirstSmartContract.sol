pragma solidity ^0.7.0;

contract FirstContract{

    // state variable; count
    uint count;

    constructor(){
        count = 10;
    }

    // a getter function for that variable
    function getCount() public view returns(uint){
      return count;
    }

    //
    function addNumber(uint number) public {
      count = count + number;
    }

    function subtractNumber(uint number) public {
      count = count - number;
    }
}
