      // Topic : Visibility 
      // Function and state variables have to declare whether they are accessible by other contracts.
      // Function can be declared as 
      // Public :  any contract and account can call 
      // private : only inside contract that inherits an internal function 
      // internal :  only inside contract that inherits an internal function 
      // external : only other contracts and accounts can call 

      //       Interview Answer 
      

      // solidity provides four visibility types : public , private , and external . Public allows access from anywhere Private restricts  access to the -
      //same contract, internal allows access within the contracts and its children and esternal allows access only from outside the contract.



      //    CODE :

      //SPDX-License-Identifier:MIT

      pragma solidity ^ 0.8.13;

      contract Base {
        //Private function can only be called 
        // inside this contract 
        // contracts that inherit this contracts cannot call this function 
        function privateFunc() private pure returns  (string memory) {
            return "Private function called ";

        } 
        function testPrivateFunc() public pure returns (string memory){
            return privateFunc();

        }

        //Internal function can be called 
        // inside this contract
        //inside contracts that inherit this contracts

        function internalFunc() internal pure returns (string memory) {
            return "internal function called";

        }
        function testInternalFunc() public pure virtual returns (string memory) {
            return internalFunc();

        }
        // Public function can be called 
        // inside this contracts
        // inside contracts that inherit this contract 
        // by other contracts and accounts 

        function publicFunc() public pure returns (string memory){
            return "public function called ";

        }

        //External function can only be called 
        // -by other contracts and accounts 

        function externalFunc() public pure returns (string memory){
            return "external function called ";

        }
        // This function will not compile since we're trying to call 
        // an external function here 
        // fucntion testExternalfunc() public pure returns (string memory) {
        //    return externalfunc();
        // }


       // State variables 
       string private privateVar = "my private variable";
       string internal  internalVar =" my internal variable";
       string public publicvar = "my public variable";
       // State variables cannot be external so this code won't compile. 
       // string external externalVar = " my external variable";



      }
      contract Child is Base{
        function testInternalFunc() public pure override returns (string memory) {
            return internalFunc();
        }
      } 