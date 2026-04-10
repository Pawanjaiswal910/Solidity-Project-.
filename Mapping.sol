
// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.10;

contract Mapping {

    //Mapping  from address to uint 
    // If the value was never set, it will return the default value .
    return myMap[_addr];

}

function set(address _addr, uint _i) public {
    // Update the value at this address 
    myMap[_addr] = _i;

}

function remove(address _addr) public {
    // Reset the value to the default value.
    delete myMap[_addr];
}


contract NestedMapping {
    //Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    funstion get(address _addr1, uint _i) public view returns (bool) {
        //you can get values from a nested mapping
        // even when it is  not initialized
        return nested[_addr1][_i];

    }
    funtion set(
        address _addr1,
        uint _i,
        bool _boo
    
    )public {
        nested[_addr1][_i] = _boo;

    }
    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
        
    }
}