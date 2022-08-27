//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract demo{
    function get() public view returns(uint gasLimit,uint blockNumber,uint blockTimeStamp,address caller)
    {
        // in solidity we can return more than one value.
        return (block.gaslimit,block.number,block.timestamp,msg.sender);
    }
    // here gaslimit is the gaslimit of this current block
    // block number is the block at which our contract is deployed.
    // block timestamp is the time st which the lock is created. this is given in seconds and is according to the unix timestamp.
    // use epochconverter to change the timestamp.
    // the address is the address of the guy who called the block.
}