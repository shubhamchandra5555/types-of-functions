# Solidity Contract: MyToken

This Solidity smart contract, named `MyToken`, represents a custom ERC-20 token with added functionality. The contract is designed to be used on the Ethereum blockchain.

## Contract Overview

- **Name and Symbol**: The token's name and symbol are customizable and provided during contract deployment.

- **Initial Supply**: The contract allows the initial supply of tokens to be minted to the contract deployer's address.

## Functions

1. **Constructor**: The constructor function initializes the token with a custom name, symbol, and an initial supply of tokens, minted to the contract deployer's address.

2. **mint(address account, uint256 amount) public onlyOwner**: This function allows the contract owner to mint additional tokens and send them to a specified address. It can be used to increase the token supply.

3. **transferTokens(address recipient, uint256 amount) public returns (bool)**: This function enables token holders to transfer tokens to other addresses. It includes the following checks:
   - Ensures that the transfer amount is greater than 10 ethers.
   - Verifies that the sender has a sufficient balance.
   If the checks pass, the function transfers the tokens to the specified recipient.

4. **burnTokens(uint256 amount) public returns (bool)**: This function enables token holders to burn (destroy) their own tokens. It includes the following checks:
   - Ensures that the burn amount is greater than 10.
   - Verifies that the sender has a sufficient balance.
   If the checks pass, the function burns the specified amount of tokens.

## License

This code is released under the MIT License, allowing you to use, modify, and distribute it as per the terms of the license.
