// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// the above one is for the version of solidity
//pragma solidity ^0.8.6;
// the above one is for 0.8.6 and greater versions 
// the below one is the contract
contract demo {
    int number;
    // the constructor is a function which is called when we deploy a contract.
    constructor()
    {
        number=5;
    }
    // here public is access specifier
    // return species the datatype returnned by the given function
    function getter() public view returns(int)
    {
        return number;
    }
    // This function doesnt return anything
    function increment() public
    {
        number=number+1;
    }
}