// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Creation of our contract
contract Transactions {
    // defining our first variable 
    uint256 transactionCount;

    // A function that have 6 parametrs
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Our transaction variables are going to be an array of TransferStruct
    TransferStruct[] transactions;

    // Specific the visibility of the function on public 
    // we can call it andd everybody can access this function
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}