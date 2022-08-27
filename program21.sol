//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // mapping structures.
    struct Student
    {
        string name;
        uint class;
        uint age;
    }
    // this is map of uint to struct Student
    mapping(uint=>Student) public data;

    function input(uint roll,string memory _name,uint _class,uint _age) public
    {
        // we are asigning the values.
        data[roll] = Student(_name,_class,_age);
        // This is another way to initialise
        // data[roll].name=_name;
        // data[roll].class=_class;
        // data[roll].age=_age;
    }
}