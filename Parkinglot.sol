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

    function park() payable external {
        currentStatus = LotStatuses.FULL;
        owner.transfer(msg.value);
    }

}
