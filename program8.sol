//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    int public number1;
    uint public number2;
    // int is signed integer and uint is unisgned integer 
    // if we specfy int8 means it takes 8 bits.
    // hence for int8 the range is -128 to 127 and uint8 is from 0 to 255.
    // similarly we can have the same int with multiples of 8 buts till 256 bits.
    // default int is int256 and some for uint.
    // if we assign a number greater than 127 to int8 then it returns an error by the compiler.
    // we can't assign -ve number to uint.
    int8 public number3;
}