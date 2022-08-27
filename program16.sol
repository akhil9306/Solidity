//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    uint[5] public arr=[1,2,3,4,5];
    uint public sum;
    // We cannot create a loop at contract level.
    // while loop
    function whileLoop() public
    {
        uint count=0;
        while(count<arr.length)
        {
            sum=sum+arr[count];
            count++;
        }
    }
    // for loop
    function forLoop() public
    {
        for(uint i=0;i<arr.length;i++)
        {
            sum=sum+arr[i];
        }
    }
    // do while loop
    function doWhileLoop() public
    {
        uint count=0;
        do
        {
            sum=sum+arr[count];
            count++;
        }while(count<arr.length);
    }
}