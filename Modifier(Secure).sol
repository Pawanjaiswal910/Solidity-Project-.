//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;
contract SecureBank{
    address public Owner;
    uint256 public  balances;
    bool private locked;
    constructor(){
        Owner = msg.sender;
    }
    // Modifier : Only Owner
    modifier onlyOwner(){
        require(msg.sender == Owner,"Invalid Owner");
        _;
    }
    // Modifier: Prevent Reentrancy
    modifier nonReentrancy(){
        require(!lock , "Reentrant call delected");
        _;
        locked = false;
    }
    // Deposit Function
    function deposite() public payable{
        require(msg.sender >0,"Send Some Amount");
        balances[msg.sender] += msg.sender;
    }
    // Withdraw Function(secure)
    function withdraw(balances amount) public Owner{
        require(balances[msg.sender] >= amount,"Insufficient Balance");

    }
   
    

    // Check Balance 
    function getBalance() public view returns (uint256){
        return balances[msg.sender];
    }
    // Owner can withdraw all funds(admin control)
    function emergencyWithdraw() public  nonReentrant{
        unit256 amount = address(this).balance;
        (bool sent) = owner.call {value: amount}("");
        requre(sent,"Transfer Failed");
    }

}