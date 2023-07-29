# Module-3-Project

MyToken is a  smart contract that adheres to the ERC20 standard and has been deployed on a local network. The contract grants the contract owner the ability to create new tokens and assign them to a specific address. Moreover, it empowers any user to destroy (burn) tokens or transfer them to other users as needed.

## How to Run

To set up the development environment for Ethereum projects, follow these steps:

Download project from https://hardhat.org/tutorial/boilerplate-project
Run in VS code
Install npm packages: Run "npm install" in the terminal.
Install remixd: Execute "npm install -g @remix-project/remixd".
Start remixd server and share a local directory with Remix IDE: Use "remixd -s ./ --remix-ide https://remix.ethereum.org".
Install OpenZeppelin Contracts library: Execute "npm install @openzeppelin/contracts".
Run Hardhat package and start a local Ethereum development network: Open another terminal and run "npx hardhat node".
Open remix and use localhost

## MINTING

Only contract owner can mint tokens:
The contract implements a modifier called onlyOwner, which ensures that only the owner of the contract has the permission to call certain functions. In this case, the mint function has the onlyOwner modifier, making it accessible exclusively to the contract owner.

## TRANFERING

Any user can transfer tokens:
The contract inherits from the ERC20 standard contract, which already provides the functionality for transferring tokens between addresses. The contract utilizes the transferFrom function from ERC20, allowing any user to transfer their tokens to another address. 

## BURNING

Any user can burn tokens:
The contract includes a burn function that allows any user to burn a specific amount of their own tokens. 

## Author

Christian Baje


