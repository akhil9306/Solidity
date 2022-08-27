//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // dynamic bytes array.
    bytes public str="abc";
    // we get str=0x616263
    // pushing a element
    // pushes at the end of the array
    function pushElement() public
    {
        str.push('d');
    }
    // now we get str=0x61626364 after pushing.
    // index of the string is specified and the result is given as a byte of size 1.
    function getElement(uint index) public view returns(bytes1)
    {
        return str[index];
    }
    // returns the length of the byte size array.
    function getLength() public view returns(uint)
    {
        return str.length;
    }
}