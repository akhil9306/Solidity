//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // fixed size arrays are arrays in which size of the array is known at compile time.
    // by default all the values are 0.
    // if we just deploy the array then we get the arr button and we get a text box to enter the position of the element we are looking for.
    uint[3] public arr1;
    // now to initialise the array we have to use square brackets.
    uint[3] public arr2 = [10,20,30];
    // function through which we can insert element to the array at a perticular position.
    uint[3] public arr = [10,20,30];
    // here for the index and element during deploying we have to enter the values seperated by a comma.
    function insert(uint index,uint element) public
    {
        arr[index]=element;
    }
    function len() public view returns(uint)
    {
        return arr.length;
    }
    // here we have fixed the size of the array before compiling hence it is a fixed size array.
    //if we have an array initialized with number of elements less than size of the array then the non inistialised part has value zero for each of its elements
    uint[3] public arr3 = [10,20];
    // as these sizes are fixed we can't insert element in a position grater than the number of elements.
    // i.e., if array size is 3 then we can't have a[3], a[4] etc and also cant insert any elements in their position.
}