// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test6 {

    struct wallet {
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;

    function getTotalBalance() public view returns(uint) {
        return address(this).balance; // "this" to specify currently deployed smart contract
    }

    function getBalance() public view returns(uint) {
        return Wallets[msg.sender].balance;
    }

    function withdrawAllMoney(address payable _to) public { // "payable" because "money" is transfered. User will withdraw all money he has deposited on the smart contract
        uint _amount = Wallets[msg.sender].balance;
        Wallets[msg.sender].balance = 0;
        _to.transfer(_amount);
    }

    receive() external payable {
        Wallets[msg.sender].balance += msg.value;
        Wallets[msg.sender].numPayments += 1;
    }

}