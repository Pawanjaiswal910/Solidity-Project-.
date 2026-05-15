//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

// Do while loop 
contract DoWhile{
    uint256 []data;
    uint8 j = 0;
    function loop () public returns(uint256[] memory){
        do { 
            j++;
            data.push(j);
        }
        while(j<3);
        return data;
        }

    }
