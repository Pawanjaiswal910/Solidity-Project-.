// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TimeLock {

    address public owner;
    uint256 public unlockTime;

    constructor(uint256 _delayInSeconds) payable {
        owner = msg.sender;
        unlockTime = block.timestamp + _delayInSeconds;
    }

    // Deposit Ether into contract
    receive() external payable {}

    // Withdraw only after unlock time
    function withdraw() public {
        require(msg.sender == owner, "Not owner");
        require(block.timestamp >= unlockTime, "Funds are locked");

        payable(owner).transfer(address(this).balance);
    }

    // Check remaining time
    function timeLeft() public view returns (uint256) {
        if (block.timestamp >= unlockTime) {
            return 0;
        } else {
            return unlockTime - block.timestamp;
        }
    }
}