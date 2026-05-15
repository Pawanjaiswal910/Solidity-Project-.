//SPDX-License-Identifier:MIT 
pragma solidity ^0.8.13;

contract stateVariables{

    //FEW THINK TO KEEP IN MIND ABOUT 
    //STATE VARIABLES
    string  public myState;
    uint256 public myNum =6;
    string public defaulatText = "pawan default text";
    uint256 public defaultNum =6;
    bytes public defaultBytes = "hey";
    bytes public defaultbytesNo ;
    uint256[] myNumber;

    //uint256[] public myNumber;
    constructor( string memory _text, uint _no ){
        myState =_text;
        myNum = _no;
    }



}

    