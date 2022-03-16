// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test3 {

    address lastPerson;
    uint balance;

    function getLastPerson() public view returns(address) { // to get last person's address
        return lastPerson;
    }

    function getBalance() public view returns(uint) { // total amount of money sent to the contract
        return balance;
    }

    receive() external payable { // "external", similar to "public" except public can be called inside and outside the contract, external only outside | no need for "function" keyword before receive | payable means money is sent
        lastPerson = msg.sender; // special function (sender : contract called by)
        balance = balance + msg.value; // amount (value) in Wei sent to the smart contract
    }
}
