//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// polymorphism is bascally same name and different forms
contract demo{
    // here in polymorphism we are basically using functions with same name and different areuments.
    // we cant use the function with same name and same aruments twice as it creates discrepancy.
    /* as there are 3 functions with the name sum we will have 3 buttons in the contract when deployed 
    and we have to put the arguments accordingly.*/
    function sum(uint a,uint b) public pure returns(uint)
    {
        return a+b;
    }
    function sum(uint a,uint b,uint c) public pure returns(uint)
    {
        return a+b+c;
    }
    function sum(string memory a,string memory b) public pure returns(string memory)
    {
        b="hello";
        return a;
    }
}