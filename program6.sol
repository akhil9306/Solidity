//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    uint number; // state variable
    // here the view keywors is used to read the state variable and connot change or modify it.
    
    function get() public view returns(uint){
        return number;
    }
    // here we if we use the pure keyword then we cannot read the variable nor write the state variable.
    // this can only be used for local variables present in the function
    function get2() public pure returns(uint){
        uint age=100; // local variable
        return age;
    }
}