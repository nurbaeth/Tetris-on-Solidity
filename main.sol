// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Tetris {
    uint8 constant ROWS = 20;
    uint8 constant COLUMNS = 10;

    struct Game {
        uint8[ROWS][COLUMNS] board;
        bool active;
        uint256 score;
    }

    mapping(address => Game) public games;
    
    event GameStarted(address player);
    event MoveMade(address player, uint8[ROWS][COLUMNS] board, uint256 score);
    event GameOver(address player, uint256 finalScore);

    function startGame() public {
        games[msg.sender] = Game({
            board: [[uint8(0)]], // Empty board
            active: true,
            score: 0
        });
        emit GameStarted(msg.sender);
    }

    function makeMove(uint8[ROWS][COLUMNS] memory newBoard, uint256 newScore) public {
        require(games[msg.sender].active, "No active game");
        games[msg.sender].board = newBoard;
        games[msg.sender].score = newScore;
        emit MoveMade(msg.sender, newBoard, newScore);
    }

    function endGame() public {
        require(games[msg.sender].active, "No active game");
        games[msg.sender].active = false;
        emit GameOver(msg.sender, games[msg.sender].score);
    }
}
