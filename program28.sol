// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// require
contract demo{
    address public owner;
    constructor()
    {
        owner = msg.sender; // here the msg.sender is the account who can call the function.
        /* as this is being initialised i.e., is the initial value hence it makes this 
        account the owner( the account that deploys the contract)*/ 
    }
    // here any account can call the get function. but the owner is the person who deplooyed the contract
    // We need the owner to only call the get funcction so we use require statement.
    function get() public view returns(uint)
    {
        require(owner==msg.sender,"You are not the owner");
        /* what this will do is if the owner is the account who deployed the contract then
        it allows them to execute the funcction else it it gives an error message "You are not the owner" */
        // msg.sender is the address of the account who wants to use the function.
        // this is something like a if-else condition but makes the code cleaner.
        // the rfunction args are like require(bool,string)
        return 10;
    }
}