// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Addr{
    // Mapping to store address to count
    mapping(address => uint256) public addressToCount;

    // Count variable
    uint256 public currentCount;

    // Function to process an array of addresses
    function saveAddresses(address[] memory addresses) public {
        require(addresses.length == 1000, "Array must have exactly 1000 addresses");

        for (uint256 i = 0; i < addresses.length; i++) {
            address addr = addresses[i];
            require(addr != address(0), "Invalid address: zero address");

            // Increment the counter and map the address to it
            currentCount++;
            addressToCount[addr] = currentCount;
        }
    }
}
