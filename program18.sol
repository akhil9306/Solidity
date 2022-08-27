//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    // enum is a user defined datatype.
    // they are user defined datatypes that are used to assign name to an integral value.
    // It is used to increase the readability of the code.
    enum user {allowed,not_allowed,wait} // this is the enum set
    // user public u1=user.allowed;
    // user public u2=user.not_allowed;
    // user public u3=user.wait;
    // once we deploy we get u1=0, u2=1 and u3=2 which means allowed is at position 1 i.e 0, not_allowed is at position 2 i.e., 1
    // and wait is at position 3 i.e., 2.
    // we  can not user any other values other than the ones present in the set i.e., we can not use user.lmao as its not in the set rn.
    user public u1=user.wait;
    uint public lottery=1000;
    // here we are checking if the user can access the variable.
    function check() public
    {
        if(u1==user.allowed)
        {
            lottery=0;
        }
    }
    function changeUser() public
    {
        u1=user.allowed;
    }
    /* personal notes:
    what i iunderstood is that user has different states when declared as a datatype using enum
    and when we declare a variable with the user then the variable can be given any one of the values in the user set.
    which can be allowed, not_allowed and wait in the above example.
    it increases redability as the set values are given 0,1,2 corrospondingly.
    so instead of using 0,1,2 we can use the notation that user is allowed, not_allowed or wait.
    The size of the set can be as large as we want but its better if we use it for lower number of values.
    althought the values in the set are integers they cannot be converted to uint or int.
    they can only be be assigned to variables declared by user.
    */
}