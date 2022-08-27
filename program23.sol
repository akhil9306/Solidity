//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract Parent{
    // inheritance is basically inheriting the properties of one contract to another contract.
    string public str;
    address public manager;

    constructor()
    {
        str="Hello World";
        manager=msg.sender;
    }

    function setter(string memory _str) public
    {
        str=_str;
    } 
}

// here the stuff od parent is inherited to child.
contract Child is Parent{
    // the child contract inherits the variables,functions and the constructor also.
    // we can also create more variables and functions in the child contract.
    uint public x;
    // this variable x is only present in the child and not in the parent as it was declared in the child only.
    // with the help of inheritance we can avoid repetition of code.
}