

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NFTCount {

    uint public numberOfNFT;

    // CHECK total number of NFT 
    function checkTotalNFT() public view returns (uint) {
        return numberOfNFT;
    }

    // This function will increment the NFT Number          
    function addNFT() public {
        numberOfNFT += 1;
    }

    // This function will delete the NFT by 1
    function deleteNFT() public {
      
        numberOfNFT -= 1;
    }
}