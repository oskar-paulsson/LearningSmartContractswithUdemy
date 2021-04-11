// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract StructExample {

    struct Player {
        string name;
        uint score;
    }

    // Create structs
    Player public bob = Player("Bob", 10);
    Player public alice = Player("Alice", 30);
    Player public monroe Player({score: 50, name: 'Monroe'});

    // Changing structs
    function monroeScoreChange(uint _score){
        monroe.score = _score;
    }

    // read
    function getMonroeScore() external returns(uint){
        return monroe.score;
    }

    // deleting a struct
    function bobDelete() external {
        delete bob;
    }
}
