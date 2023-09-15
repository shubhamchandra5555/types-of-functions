// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    // Function to mint tokens, only accessible by the contract owner
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Function to transfer tokens
    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(amount > 0, "ERC20: transfer amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "ERC20: insufficient balance");

        _transfer(msg.sender, recipient, amount);
        return true;
    }

    // Function to burn tokens
    function burnTokens(uint256 amount) public returns (bool) {
        require(amount > 0, "ERC20: burn amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "ERC20: insufficient balance");

        _burn(msg.sender, amount);
        return true;
    }
}
