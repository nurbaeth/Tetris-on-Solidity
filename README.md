# Tetris on Solidity

Tetris on Solidity is an experimental on-chain implementation of the classic Tetris game. The project explores the feasibility of blockchain-based gaming by storing the game state in a smart contract and allowing decentralized scorekeeping.

## Features
- Fully on-chain game logic written in Solidity
- Players can start a game, make moves, and track scores
- Immutable and transparent game state

## How It Works
1. **Start a Game:** Players initialize a new game session on the blockchain.
2. **Make Moves:** Players submit their game board updates and scores via smart contract interactions.
3. **Game Over:** The game session ends when the player chooses to finalize it.
 
## Smart Contract 
The core of the game is implemented in the `Tetris.sol` smart contract. It maintains the game board, score, and game status for each player.

## Deployment
To deploy the contract, use the following steps: 

```sh
forge install
forge build
forge deploy
```

## Interaction
You can interact with the contract using a Solidity-compatible blockchain development tool like Foundry or Hardhat.

## Roadmap
- Implement block dropping mechanics
- Add game logic for clearing lines
- Develop a front-end for on-chain play

## License
This project is open-source and licensed under MIT.

---

🚀 **Ready to play? Deploy and test your Tetris skills on the blockchain!**

