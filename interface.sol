 //SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
contract counter {
    uint public count;
    function increment() external  {
        count += 1;

    }

}
interface Icounter {
    function count() external view returns (uint);
    function increment() external;

}
contract Mycontract {
    function incrementCounter(address _counter) external {
        Icounter(_counter).increment();

    }
    function getCounter(address _counter) external view returns (uint) {
        return Icounter(_counter).count();

    }
}

// uniswap example 

interface UniswapV2Factory{
    function getPair(address tokenA, address tokenB)
    external 
    view 
    returns (address pair);

}

interface UniswapV2Pair {
    function getReserves()
    external 
    view
    returns (
        uint112 reserves0,
        uint112 reservel1,
        uint32 blockTImestampLast
    );
 }

// contract UniswapExample {
//     address private factory = "";
//     address private dai = "";
//     address private weth = "";

//     function getTokenReserves() external view returns (uint,uint) {
//         address pair = UniswapV2Factory(factory).gatPair (dai,weth);
//         (uint reserve0 , uint reserved1, ) = UniswapV2pair(pair).getReserves();
//         return (reserve0,reserve1);
//     }


// }
