// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract ParkingLot {

    address payable public owner;

    enum LotStatuses { VACANT, FULL }
    LotStatuses currentStatus;

    constructor() {
        owner = msg.sender;
        currentStatus = LotStatuses.VACANT;
    }

    modifier checkVacancy {
        require(currentStatus == LotStatuses.VACANT, "Currently not vacant");
        _;
    }

    modifier checkCost(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function park() payable external checkVacancy checkCost(10 ether) {
        currentStatus = LotStatuses.FULL;
        owner.transfer(msg.value);
    }

}
