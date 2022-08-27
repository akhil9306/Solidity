//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    //if a string not initialised with anything hence it is has nothing.
    // but it is not null as there is no concept of null.
    string public str="hello world";

    // here we are using memory as string is always be a state variable and by using memory it can become local variable.
    // if we put memory keyword at contract level then we get an error for string.
    // similarly if we don't use memory keyword for a string at function level then it gives an error.
    function print() public pure returns(string memory)
    {
        string memory str1="good";
        return str1;
    }
    // in a function if we try to return a string that is a state variable then also in returns we use (string memory).
}