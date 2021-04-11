// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract MappingExample{

    // initiate simple MappingExample
    mapping(string => uint) public players;

    // nested mapping example
    mapping(string => (mapping(string => uint))) public versions;

    // fill up the mapping with data
    constructor() {
        players['bob'] = 20;
        players['alice'] = 50;
        players['carl'] = 10;
        versions['alpha']['olav'] = 100;
    }

    // reading data from a mapping
    function getScore(string memory _player) external view returns(uint) {
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

    // retrieving data from a nested mapping/struct
    function getNestedData(string memory _version, string memory _player) external view returns(uint){
        return versions[_version][_players];
    }

}
