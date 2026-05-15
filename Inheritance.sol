// How to create inheritance in solidity From Parent contract.

// SPDX-License-Identifier:MIT

pragma solidity ^ 0.8.13;
/* Graph of inheritance
       A
       /\
      B c
     /\ /
     F D,E
     */

     contract A {
        function foo() public pure virtual returns (string memory) {
            return "A";

        }
     }

     // contracts inherit other contracts by using the keyword 'is '

     contract B is A {
        // Override A.foo()
        function foo() public pure virtual override returns (string memory) {
            return "B";

        }
     }
     contract C is A {
        // Override A.foo()
        function foo() public pure virtual override returns (string memory) {
            return "C";

        }
     }
      // contracts can inherit from multiple parent contract
      // When a function is called that is defined multiple time in 
      // different contracts , parent contract are searched from 
      // right to left , and in depth first manner.

      contract D is B,C{
        //D.foo() returns "C".
        //since c is the right most parent contract with function foo()
        function foo() public pure override (B,C) returns (string memory) {
            return super.foo();

        }
      }

      contract E is C,B {
        // E.foo() return "B".
        //since B is the right most parent contract with function foo() 
        function foo() public pure override(C,B) returns (string memory) {
            return super.foo();

        }
      }
      // inheritance must be ordered from " most base -like" to "most derived".
      // swapping the order of A and B will throw a compilation errr.
      contract F is A,B {
        function foo() public pure override (A,B) returns (string memory) {
            return super.foo();

        }
      }