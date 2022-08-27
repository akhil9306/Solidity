//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // fixed byte size array we can have this from 1 to 32 bytes.
    // bytes1 means 1 byte and bytes2 means 2 bytes and so on till bytes32.
    bytes1 public b1;
    bytes2 public b2;
    // what ever we store in our byte size array gets stored in the form of a hexa - decimal number.
    // check rapidtables.com and in the ascii table the second column is consisting of hexa-decimal number.
    bytes3 public b3;
    function setter() public
    {
        b1="a";
        b2="ab";
        b3="abc";
    }
    // here once we click the setter funcion we get 
    // b1=0x61
    // b2=0x6162
    // b3=x616263
    // Hence here 61 is the hexa-decimal number for 'a' and 62 for b and 63 for c and so on as given in the ascii table.
    function setter2() public
    {
        b3="a";
    }
    // here once we call setter2 we get b3=0x610000 bacially the first byte id "a" and the remaining 2 bytes are paired with 0.
    // in byte size arrays we can not do some thing like b3[0]="c", we can't assign individual elements.
}