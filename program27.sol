//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// visibility specifiers in solidity are public,private,internal and external.
/*
1. outside world is the is the part outside the program , as we can see that the remixide
is providing us with the interface between the outside world and the program. here the deploy
button is in the outside world and the public and external functions are visible here.
2. within contract functions that can be called within the contract , this can be done with public, private 
and internal function but nit external functions. so we can call f1(),f2() and f3() in the Parent contract and not f4().
3. derived contract the functions other than private can be inherited or are visible to the child contract.
Hence it works for internal,public and external.
4. other contract is where we need to create an object of that contract to access it functions. and the functions that
can be accessed are public and external.
*/
contract Parent{ // within contract
    // public is visible in 1,2,3,4
    function f1() public pure returns(uint)
    {
        return 1;
    }
    // private is only visible in 2
    function f2() private pure returns(uint)
    {
        return 2;
    }
    // internal is visible in 2,3
    function f3() internal pure returns(uint)
    {
        return 3;
    }
    // external is visible to 1,3,4
    function f4() external pure returns(uint)
    {
        return 4;
    }
    uint public a = f1();
    uint public b = f2();
    uint public c = f3();
    // the above 3 can be called in this contract.
    // uint public d =  f4();
    // we get an error over here as f4 can not be called as it is an external function and can't be called 
    // with in the contract.
}
contract Child is Parent{ // Derived Contract
    uint public w = f1();
    uint public x = f3();
    // the above 2 contract work, hence public and internal contracts work.
    // uint public y = f2();
    // we get an error over here as f2 is private in Parent and is not visible to its child contract.
    // uint public z = f4();
    // we get an error here because although f4() can be inherited, it cant be called because child also
    // inherits the same function and the function being external can not be called with in this contract also.
}
contract demo{ //other contract
    Parent p = new Parent(); // creating new parent
    uint public s = p.f1();
    // f1 works as it is public
    // uint public t = p.f2();
    // f2 doesn't work as it is private in Parent and not visible to demo contract.
    // uint public u = p.f3();
    // f3 doesn't work as it is internal in Parent and not visible to demo contract.
    uint public v = p.f4();
    // f4 works as it accepts external and is visible and we dont have the issue as it not inherited 
    // or called within the same class and hence doesn't give any error.
}