// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

import "./Ownable.sol"

contract ParkingLot is Ownable {

    enum LotStatuses { VACANT, FULL }
    LotStatuses public currentStatus;

    event Occupy(address _occupant, uint _value);
    event Unoccupy();

    constructor() {
        super;
        currentStatus = LotStatuses.VACANT;
    }

    modifier checkVacancy {
        require(currentStatus == LotStatuses.VACANT, "Currently not vacant");
        _;
    }

    modifier checkOccupancy {
        require(currentStatus != LotStatuses.VACANT, "Currently not occupied");
        _;
    }

    modifier checkCost(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function park() payable external checkVacancy checkCost(10 ether) {
        currentStatus = LotStatuses.FULL;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

    function unPark() external checkOwnership checkOccupancy {
        currentStatus = LotStatuses.VACANT;
        emit Unoccupy();
    }

}
