//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
contract FunctionModifier{
    address public owner;
    uint256 public count;
    bool private locked;
    constructor(){
        owner = msg.sender;
        count = 0;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"Not Owner");
        _;

    }
    modifier validAddress(address _addr){
        require(_addr != address(0),"Invalid Address");
        _;
    }
    modifier nonReentrant() {
        require(!locked,"Reentrant call");
        locked = true;
        _;
        locked = false;
    }
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner =_newOwner;
        
    }
    function decrement() public nonReentrant{
        require(count>0, "Invalid Input");
        count -=1;
    }
}
    
        



