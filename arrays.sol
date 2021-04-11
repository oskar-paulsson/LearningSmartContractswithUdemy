// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract ArraysExample{

    uint[5] fixedSizeArray = [1, 2, 3, 4, 5];
    uint[] public dynamicArray;

    // add elements
    constructor() {
        dynamicArray.push(5);
        dynamicArray.push(6);
        dynamicArray.push(9);
    }

    // update a specific element
    function updateArray(uint _index, uint _updatedValue) externally {
        dynamicArray[_index] = _updatedValue;
    }

    // push a specific element
    function pushElement(uint _updatedValue) externally {
        dynamicArray.push(_updatedValue);
    }

    // delete an element
    function deleteElement(uint _index) external {
        delete dynamicArray[_index];
    }

    // delete last element
    function popElement(uint _index) external {
        dynamicArray.pop();
    }

    // add a number to each element in the array
    function addNumbers(uint _number) external {
        for(uint i = 0; i < numbers.length; i++){
            numbers[i] = numbers[i] + _number;
        }
    }
}
