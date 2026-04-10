// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;
// EVENT TICKET

contract EvenTicket{
    uint256 public numberofTicket;
    uint256 public ticketprice;
    uint256 public totalAmount;
    uint256 public starteTime;
    uint256 public endTime;
    uint256 public timeTalen;
    string  public message = " Buy you first Ticket";
    constructor(uint256 _ticketPrice){
        ticketprice  = _ticketPrice;
        starteTime = block.timestamp;
        endTime = block.timestamp+7 days;
        timeTalen =(endTime - starteTime) / 60/60/24;


    }
    function buyTicket(uint256 _value) public returns(uint256 ticketId)
     {     
        numberofTicket++;
    totalAmount += _value;
    return numberofTicket;}

}