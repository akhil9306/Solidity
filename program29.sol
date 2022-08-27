// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// modifier
contract demo{
    address public owner;
    constructor()
    {
        owner = msg.sender; 
    }
    // modifier here many times we are using require statement and to help get over that we use modifier.
    modifier onlyOwner()
    {
        require(owner==msg.sender,"You are not the owner");
        _;
        /* the underscore is used so that the remaining part of the original function gets copied here
        and this is done in the back ground.
        eg. if we call get10 in the deploy the modifier replaces _; by return 10; (or something similar)
        as we are using the onlyOwner in conjunction.
        the _; accomidates some lines of code and not just one line.
        */
    }
    // it works the same as the previous transaction execpt we needn't write many require statements 
    // and use onlyOwner in conjunction while calling the functions.
    function get10() public view onlyOwner returns(uint)
    {
        // require(owner==msg.sender,"You are not the owner");
        return 10;
    }
    function get20() public view onlyOwner returns(uint)
    {
        // require(owner==msg.sender,"You are not the owner");
        return 20;
    }
    function get30() public view onlyOwner returns(uint)
    {
        // require(owner==msg.sender,"You are not the owner");
        return 30;
    }
}