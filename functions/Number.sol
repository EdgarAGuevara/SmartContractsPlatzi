// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number {
    //public    // it could be called into or outside a contract.
    //private   // it could be called into a contract.

    function getNumber() private returns (int256 number) {
        number = 1948;
    }

    function changeNumber() public returns (int256 number) {
        number = getNumber() * -1;
    }
}
