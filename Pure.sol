//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;
contract Pure{
    uint256 num1 =4;
    uint256 num2 = 5;

  function getData()public pure  returns (uint256,uint256){
    uint256 a =10;
    uint256 b = 50;
        uint256 product = a * a;
         uint256 total = b * b;
        return (product, total);}


}