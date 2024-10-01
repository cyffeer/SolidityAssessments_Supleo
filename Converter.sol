// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Converter {
    uint256 public balance;


function deposit(uint256 _balance) public payable {
    balance = _balance;
}

 function getBalanceInWei() public view returns (uint256) {
        return balance * 1 ether;
    }

function getBalanceInEther() public view returns (uint256) {
    return balance;
}

function getBalanceInGwei() public view returns (uint256) {
    return balance * 1 gwei;
}

}
