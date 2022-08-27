// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
/* if someone directly tries to send ether to a address without using payEnetr function then the 
ether may get lost */
// to avoid this we use fallback function 
contract demo{
    function payEther() public payable
    {

    }
    function check_balance() public view returns(uint)
    {
        return address(this).balance;
    }
    // fallback is used tehn no other function can be called 
    // or we are calling some function in our contract that doesnt exist
    fallback() external payable
    {
        payable(msg.sender).transfer(msg.value);
    }
    // what this fallback() does is that if a person tries to transfer ether to this another account 
    // not via the payEther metod then the ether is being sent back to that persons account.
}