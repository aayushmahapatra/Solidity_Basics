// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; // solidity compiler version

// Constructor and Modifiers
contract Crud {
    address public owner;

    // first function to be triggered when a smart contract is deployed
    constructor() {
        owner = msg.sender;
    }

    uint256 public coins = 0;

    function add() public {
        require(coins <= 3, "Too many coins!");
        coins++;
    }

    // custom filters for functions
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner!");
        _;
    }

    function subtract() public onlyOwner {
        coins--;
    }
}
