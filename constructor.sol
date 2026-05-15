// SPDX-License-Identifier;MIT
pragma solidity ^0.8.13;
// Base contract X

contract X {
    string public name;

    constructor(string memory _name){
        name =_name;

    }
}

// base contract y
contract y{
    string public text;
    constructor(string memory _text){
        text = _text;

    }
}
// There are 2 ways to initialize parent contract with parameters .
// Pass the parameters here in the inheritance list .
 
 contract B is X("input to X"), y("Input to y") {


 }
 contract C is X,y {
    // pass the parameters heer in the constructor ,
    //similar to function modifiers.

    constructor( string memory _name , string memory _text ) X (_name) y(_text){}


 }
 //Paremt constructors are always called in the order of inheritance 
 //regardless of the order of parent contracts listed listed in the
 //constructor of the child contract.

 //Order of constructor called :
 //1. X 
 //2.y 
 //3.D
 contract D is X,y{
    constructor () X("X was called ") y("y was called") {}

 }

//order od constructors called:
// 1.X 
//2.y
//3.E
contract E is X ,y {
    constructor() y("y was called") X("X was called"){} 

}
