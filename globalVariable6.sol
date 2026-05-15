// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
// golbal variables 
contract GlobalVariables {
    address public owner;
      address public Myblockhash;
      uint256 public difficulty;
      uint256 public gaslimit;
      uint256 public number;
      uint256 public timestamp;
      uint256 public value;
      uint256 public nowOn;
      uint256 public origin;
      uint256 public gasprice;
      bytes public callData;
      bytes4 public Firstfour;

    constructor () {
        owner = msg.sender;
        //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        Myblockhash = block.coinbase;
        difficulty =block.difficulty;
        gaslimit = block.gaslimit;
        number =block.number;
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig;


    }
}
