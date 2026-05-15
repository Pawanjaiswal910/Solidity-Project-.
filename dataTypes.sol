// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataTypes {

    bool public hey;
    bool public no = true;

    // UINT stands for unsigned integer (non-negative numbers)

    // Correct declarations
    uint8 public smallNumber = 10;       // range: 0 to 255
    uint16 public myNumber = 100;        // range: 0 to 65535
    uint256 public bigNumber = 1000;     // very large range

    uint8 public u8 = 1;
    uint public u256 = 456;  // same as uint256
    uint public u = 123;

}