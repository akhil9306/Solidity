//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // variable declared inside a function is called local variable.
    function getter() public pure returns(uint){
        string memory str="hello";
        uint age=10; // local variable 
        return age;
    }
    // state variables get stored on the contract storage.
    // local variables dont get stored on the contract storage but on the stack.
    // hence for a local variable we dont require any gas.
    // here if we declare string or array in the datatype their by default gets stored on the contract storage.
    // hence we use memory keyword to avoid this.
    // this keyword cant be used at contract level.
}