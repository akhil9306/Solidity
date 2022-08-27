//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    uint public age;
    // creating function we have to use function keyword.
    // function getter() public view returns(uint){
    //     return age;
    // }
    // if we put the datatype of variable as public then it creates getter function as automatically.
    // here if getter public is not mentioned then we dont get the age button.
    function increment() public{
        age=age+1;
    }
    // here the parameter is taken as input.
    function setter(uint newage) public{
        age=newage;
    }
    // changes to a state variable will cost gas.
    // here increment and setter functions are state variables.
}