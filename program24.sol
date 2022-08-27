//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
/* abstract contracts are contracts where we have atleast one function
that doeant have an implimentation and hence we can create its implimentation in the derived class.
*/
// here the contract parent should be marked abstract.
abstract contract Parent{
    string public str;
    address public manager;

    constructor()
    {
        str="Hello World";
        manager=msg.sender;
    }
    // function with no implementation
    // functions without implementation should be marked as virtual.
    function setter(string memory _str) public virtual;
}
/* here if we are keeping the parent contract abstract and the chils contract as not abstract
then we get an error if we don't implment the unimplemented function in the child contract.
this is because the function gets inherited and the child contact is not abstract and has a function which doesn't have
an implementation
*/
/* if we implement the unimplemented function from the parent in the child then we needn't keep it as abstract
 and mark the unimplemented function with override*/
contract Child is Parent{
    uint public x;
    function setter(string memory _str) public override
    {
        str=_str;
    }
}
// the use of abstract contract is to provide a structure to the child contract
// it helps the child contract identify to set to identify whether the parent contarct has a unimplemented function and can try to implement it.