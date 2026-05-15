//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReceiveEther {
    /* 
    Which function is called ,fallback() or receiver()?

             send Ether
                |
            mag.data is empty?
                 /  \
                yes  no 
                /    \
    receive()exists  fallback()

    */
    // Function to receive Ether .msg.data must be empty 
    receive() external payable {}

    //Fallback function is called when msg.data is not empty 
    fallback() external payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance;

    }


}

contract SendEther {
    function sendViaTransfer(address payable _to ) public payable {
        //send returns a boolean value indicating success or failure .
        //THis function is no Longer recommended for sending Ether.

        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");

    }

    function sendViaCall(address payable _to ) public payable{
        //call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent,bytes memory data ) = _to.call{value:msg.value}("");
        require(sent, "Failed to send Ether");

    }
}
