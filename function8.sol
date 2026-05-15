//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; 
contract LearnFunction{
    uint256 hey;
     // geeting two number 
     function get(uint256 _a ,uint256 _b) public view returns(uint){
        uint256 newNumber = _a+_b;
        return newNumber;

     }

}