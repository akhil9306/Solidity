//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // we can use if- else statement at contract level and only at function level.
    // to use we have to create a function
    function check(int num) public pure returns(string memory)
    {
        string memory str;
        // this part is normal if else.
        if(num>0)
        {
            str="num is greater than 0";
        }
        else if(num==0)
        {
            str="num is equal to 0";
        }
        else
        {
            str="num is less than 0";
        }
        return str;
    }
}