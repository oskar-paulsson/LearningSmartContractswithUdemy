// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract MappingExample{

    // initiate simple MappingExample
    mapping(string => uint) public players;

    // fill up the mapping with data
    constructor (){
        players['bob'] = 20;
        players['alice'] = 50;
        players['carl'] = 10;
    }

    // reading data from a mapping
    function(string memory _player) external view returns(uint){
        return players[_player];
    }

    // update
    function updateScore(string memory _player, uint _score) external {
        players[_player] = _score;
    }

    // delete a players
    function deletePlayer(string memory _player) external {
        delete players[_player];
    }
}
