
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;
// External contract used for try / catch examples
contract Foo {
    address public owner;
    constructor (address _owner) {
        require(_owner != address(0),"Invalid address" );
        assert(_owner != 0x0001);
        owner = _owner;

    }
    function myFunction (uint x) public pure returns (string memory){
        require(x != 0, "require failed");
        return "my function was called ";

    }


contract Bar {
    event Log(string message);
    event LogBytes(bytes data);
     
     Foo public foo;

     constructor (){
        // This foo contract is used for example of try catch with external call
        foo = new Foo (msg.sender);

     }
     //Example of try /catch with external call 
     //tryCatchExternal Call (0) => Log("external call failed")
     // tryCatchExternalCall (1) => Log("my function was called")
     function tryCatchExternalCall (uint _i) public {
        try foo.myFunction(_i) returns (string memory result) {
            emit Log(result);
        } catch {
            emit Log("External call faild")
        }
     }
}