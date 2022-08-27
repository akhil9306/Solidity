// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// payable functions are functions with which we can transfer ether to our contract.
contract demo{
    // we use the payable for the function to recieve ether.
    // we can transfer form any address to this contract.
    function payEther() public payable
    {

    }
    function check_balance() public view returns(uint)
    {
        return address(this).balance;
    }
    // to add ether we need tom use the pay ether we have this value part right above the deploy butto and the contract
    // here we can set the value to 5 ether (or wei )or anything.
    // then we can click payEther in the deployed contract to transfer ether 
    // from the address account given in the address to this account to this account.
    // we can change the account from which we can get the ether from also.
    // this neednt be the same owner account it can be anyother account given.
}