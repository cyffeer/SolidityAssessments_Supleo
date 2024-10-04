// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    uint256 public sum;

    function Looptest() public {
        for (uint256 i = 0; i < 1000; i++) {
            sum += i; 
        }
    }
}
