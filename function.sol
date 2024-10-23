// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionChallenge {
    uint256 internal storedValue;
    address internal owner;

    constructor() {
        owner = msg.sender;
        storedValue = 1000; // Initial stored value
    }

    function getStoredValue() internal view returns (uint256) {
        return storedValue;
    }

    function addNumbers(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
    }

    function getContractBalance() internal view returns (uint256) {
        return address(this).balance;
    }
}
