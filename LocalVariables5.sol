// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariables {

    uint256 public myNumber; // state variable

    // LOCAL VARIABLES FUNCTION
    function local() public returns (address, uint256, uint256) {

        // local variables (inside function)
        uint256 i = 345;

        myNumber = i;   // writing to state variable

        i += 45;

        address myAddress = address(1);

        return (myAddress, myNumber, i);
    }

}