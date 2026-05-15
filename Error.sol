//SPDX-License-Identifier:MIT 

pragma solidity ^0.8.13;



     // SOLIDITY RECERT Handeler 

     contract RevertStatement {
        function checkOverFlow(uint256 _num1, uint256 _num2) public pure returns(string memory,uint256){
        uint256 sum =_num1 + _num2;
        if( sum > 255){
            revert (" Overflow exists");

        } 
            return ("No Overflow ",sum);
        }

        }

     