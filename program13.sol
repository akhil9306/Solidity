//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // In dynamic size array we dont have to tell the size of the array at  compile time.
    // Decleration of dynamic size arrays.
    // here during deploying get the arr button and right beside is a text field to write the element position we want to access.
    uint[] public arr;
    // At this point just declaring the array has not created it.
    // we have push, pop, and length function.
    function pushElement(uint item) public
    {
        arr.push(item); // push element at the end.
    }
    function popElement() public
    {
        arr.pop(); // pop element at the end
    }
    function len() public view returns(uint)
    {
        return arr.length; // array length
    }
    // here its dynamic size array as we are not giving the size of the array.
}