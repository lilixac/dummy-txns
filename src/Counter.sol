// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    event NumberSet();

    function setNumber() public {
        number = number++;
        emit NumberSet();
    }
}
