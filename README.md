# Module-3-Project

MyToken is a  smart contract that adheres to the ERC20 standard and has been deployed on a local network. The contract grants the contract owner the ability to create new tokens and assign them to a specific address. Moreover, it empowers any user to destroy (burn) tokens or transfer them to other users as needed.

## How to Run

Go to https://remix.ethereum.org/.

Connect Remix to the local network.

Create a new Solidity file and paste the code.

Compile and Deploy the contract from Remix by clicking the "Deploy & Run Transactions" tab.

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


