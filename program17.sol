//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// this is how we declare a structure.
struct student
{
    uint roll;
    string name;
}
contract demo{
    // we can create a structure inside the contract also.
    // creating a variable for the structure.
    student public s1;
    // here as we are using a constructor we need to put the values before we deploy and they are comma seprated.
    constructor(uint _roll,string memory _name)
    {
        s1.roll=_roll;
        s1.name=_name;
    }
    // function to change the name and roll no.
    // structure also references storage by default.
    function change(uint _roll,string memory _name) public
    {
        // this is another way to initialise.
        student memory new_student=student({
            roll:_roll,
            name:_name
        });
        // this is how we copy the values of new_student to s1.
        s1=new_student;
    }
}