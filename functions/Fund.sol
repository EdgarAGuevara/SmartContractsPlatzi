// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Fund {
    //public    // it could be called into or outside a contract.
    //payable // it used when you wanna that function send ether.

    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }
}
