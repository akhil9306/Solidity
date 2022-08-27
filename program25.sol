//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// interface is an agreement between itself and the contract that implements it.
// interface can not have state variables.
// intreface can not have constructors
// inetrface can only inherit form other interfaces but not contracts.
// interfaces can have functions declared but not implemented, the functions have to be external.
interface Parent{
    // string public str;
    // address public manager;
    // constructor()
    // {
    //     str="Hello World";
    //     manager=msg.sender;
    // }
    function setter(string memory _str) external;
}
/* now as our child contract is inheriting the parent interface we need to 
either implement the unimplemented function if it is present in the parent function or
we need to make the child abstract*/
contract Child is Parent{
    function setter(string memory _str) public override
    {
        
    }
}
// interface is basically the agreement so we have to implement all the functions in the interface in ite child contract.