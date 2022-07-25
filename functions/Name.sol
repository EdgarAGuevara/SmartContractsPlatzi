// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Asset {
    //public    // it could be called into or outside a contract.
    //view    // it only read the state variables..not change them.

    string name = "PlatziCoin";

    function getName() public view returns (string memory) {
        return name;
    }
}
