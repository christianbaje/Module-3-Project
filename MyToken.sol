// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor() ERC20("MyToken", "pot") {
        owner = msg.sender;
    }

    // This modifier restricts access to the function to only the owner of the contract.
    modifier onlyOwner() {
        require(msg.sender == owner, "You're not the owner");
        _;
    }

    // Mint new tokens and assign them to the specified address.
    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    // Burn a specific amount of tokens owned by the sender.
    function burn(address to, uint256 amount) public {
        _burn(to, amount);
    }
    // Transfer tokens from one address to another.
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
    // Check if the sender has enough allowance to spend on behalf of 'from' address.
    require(amount <= allowance(from, msg.sender), "Allowance exceeded");

    // Check if the sender has enough balance to perform the transfer.
    require(amount <= balanceOf(from), "Insufficient Balance");

    // Perform the transfer by calling the ERC20's transferFrom function.
    return super.transferFrom(from, to, amount);
}
}
