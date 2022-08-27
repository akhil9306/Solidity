// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// event 
// this is basically if we have a smart contract and if an application we make asks the user to pay
// the payment request is sent to the amsrt contract and if the payment is successful user gets a notification 
// which over is the event and this is used to notify the user and owner of the smart contract.
// if we store all users and payments details on the smart contracts then it will take lot of gass.
// so we use events which use log files to store this and require less gass.
contract demo{
    string public str;

    event register(address manager,string char);
    // event decleration, register is the variable and it emits manager and char when called.
    function setter(string memory _str) public
    {
        str=_str;
        emit register(msg.sender,str); // emit is being called to emit the event.
        // we can check this in the logs in the terminal once the function is called.
    }
}