// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AdminAccess {
    address public admin;
    uint256 public storedValue;

    modifier AdminOnly() {
        require(msg.sender == admin, "Access denied: only admin can call this function");
        _;
    }

    constructor() {
        admin = msg.sender;
        storedValue = 1000; // Initial value of storedValue
    }

    function changeAdmin(address newAdmin) public AdminOnly {
        require(newAdmin != address(0), "New admin address cannot be zero");
        admin = newAdmin;
    }

    function restrictedFunction(uint256 amount) public AdminOnly {
        require(amount <= storedValue, "Insufficient stored value");
        storedValue -= amount; // Subtract the amount from storedValue
    }
}
