//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // mapping helps use map our keys to the values.
    // here the uint is the key and string is the value.
    // we are mapping uint to string.
    mapping(uint=>string) public student;
    // once we deploy we get a text box beside the student button.
    // in the text bar we can geive the uint of the given map(here the roll number of the student.)
    // and upon clicking we get the string(here the name of the student)
    // if the key is not present then we get a empty string as our result.
    // function to store the input.
    function input(uint roll,string memory name) public 
    {
        student[roll]=name;
    }
}