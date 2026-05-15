//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;

contract Function {
    // Function can return multiple values 

    function returnMany()
    public 
    pure 
    returns(
        uint,
        bool,
        uint
    )
    {
        return(1, true,2);

    }

    // Return value can be named.

    function named()
    public 
    pure 
    returns(
        uint X,
        bool b,
        uint y
    )
    {
        return(1, true, 2 );

    }
    // Return values can be assigned to their name.
    // In this case the return statement can be omitted 

    function assigned()
    public 
    pure
    returns(
        uint X,
        bool b,
        uint year

    )
    {
       x =1;
       b =true;
       y =2;

    }
    // Use destructuring assignment when calling another 
    // function that returns multiple values.
    function destructuringAssignments()
    public 
    pure 
    returns (
        uint,
        bool,
        uint,
        uint,uint
    )
    {
        (uint i, bool b, uint j ) = returnMany();

        // Values can be left out 
        (uint X, uint y) =(4,5,6);
        return (i,b,j,x,y); 
    }

    // cannot use map for either input or output 
    //can use array for input

    function arrayInput(uint[] memory _arr) public {}

    //can use array for output
    uint[] public arr;
    function arrayOutput() public view returns (uint[] memory){
        return arr;
    } 

}

//call function with key-value inputs

// contract xyz{
//     function someFunctionWithManyInputs(
//         uint x,
//         uint y,
//         uint z,
//         address a, 
//         bool b,
//         string memory c)
//          public pure returns (uint){}
//          function callFunction() exturns pure returns (uint) {
//             return someFunctionWithManyInputs(1,2,3, address(0), true,"c");
//          }
            
            
//                 return  
//                         someFunctionWithManyInputs( { a: address(0), b: true, c:"c", x:1, y:2, z:3})


//             }
         
    
