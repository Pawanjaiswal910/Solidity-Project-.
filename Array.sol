// SPDX-License-Idntifier : MIT
pragma solidity ^0.8.13;

contract array {
    //several ways to initialize an array 
    
    uint[] public arr =[1,2,3,5,7,8];
    //Fixed the sized of array, all element initialize to 0
    uint[] public myFixedSizeArr;
    function get(uint i)public view returns(uint){
        return arr[i];

    }
    //Solidity can return the entire array
    //But this function should be avoided for 
    //array that can grow indefinitely in lenght.
    function getArr() public view returns (uint[] memory){
        return arr;

    }
    function push(uint i) public {
        //Append to array
        //This will increase the lenght of array by 1
        arr.push(i);
    }
    function pop() public {
        //remove last element from array
        // this will decrease the array length;
        arr.pop();

    }
   
       
    



}




