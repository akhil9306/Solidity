//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // constructor is used to initialise state variables of a contract or the owner of the contract.
    // it can be used to initialise the contract owner also
    uint public count;
    constructor(uint new_count){
        count=new_count;
    }
    // here who calls the constructor??
    // it is the compliler
    // as we are call during compile time hence if we pase any arguments (args) it will be shown right next to deploy button.
    // we can have many args.
    // hence we need to pass these args before deploying.
    // constructor can only be created once.
    // default constructor will be created if we dont create one and that will be done by the compiler.
}