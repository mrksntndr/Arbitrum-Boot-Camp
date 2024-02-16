// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Chicoin is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Chicoin", "CHIC")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amountInWei) public onlyOwner {
        uint256 amountInTokens = amountInWei * 1e18;
        
        _mint(to, amountInTokens);
    }
}
