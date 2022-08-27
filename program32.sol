// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
// payable functions are functions with which we can transfer ether to our contract.
// now to transfer ether from contract to account.
contract demo{
    // here we are declaring the account to which the ether has to be paid.
    // we have to explicitly make the address payable (this is explicit conversion.) 
    address payable user=payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    function payEther() public payable
    {

    }
    function check_balance() public view returns(uint)
    {
        return address(this).balance;
    }
    function payEtherToAccount() public
    {
        user.transfer(10 ether);
    }
    // hece we can transfer 10 ether to the account user from the contract by using payEtherToAccount function
    // to get ether we have to use the same procedure as given in demo31.sol 
}