//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // state variables are variables that get declared at contract level.
    // they require a lot of gas.
    uint public age=10; // age is a state variable.
    // uint is unsigned int
    // public is access sepcifier
    // here we cant do age=10; in the contract level as that gives an error.
    // if we dont have public here then we dont get the age button during deploying.
    // here age2 is not dispalyed
    uint age2=10;
    constructor()
    {
        age=100; // this value is now given to age. (not sure but constructor as more priority compared to directly initialising.)
    }
    // here if we dont initialise with any value we get 0 as its value.
    // this is cause we dont have null in solidity.
    uint public age3;
    function setter() public{
        age3=20;
    }
    // if we add a new variable after deploying a contract then it wont be present in the contract as solidity is a static type programming language.
    // we have to compile and then re deploy the to get a new instance.
}