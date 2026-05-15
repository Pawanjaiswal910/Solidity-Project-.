// SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
contract Payable {
    address payable owner;
    //payable constructor can receive Ether 
    constructor() payable {
        owner = payable(msg.sender);

    }
    //Function to deposite Ether into this cantract.
    // call this function along with some Ether.
    // The balance of this contract will be automatically update .
    function deposit() public payable {}

    // Call this function along with some Ether .
    // The funtion will throw an error since this function is not Payable.
    function notPayable() public {}

    // Function to withdraw all Ether from this contract .

    function withdraw() public {
        //get the amount of Ether store in this contract 

        uint amount = address(this).balance;
        //send all Ether to owner 
        //Owner can receive Ethe since the addrss of owner is payable 
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether ");

    }
    // Funtion to tranfer Ehter from this contract to address from input 
    function transfer(address payable _to , uint _amount) public {

        // Note that "to" is declared as payable 
        (bool success,) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }

}

